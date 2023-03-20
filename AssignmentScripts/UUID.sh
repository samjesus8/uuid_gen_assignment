#! /usr/bin/env bash

julian=2299160                              # 15 Oct 1582
unix=2440587                                # 1 Jan 1970
epoch=$(expr $unix - $julian)
g1582=$(expr $epoch \* 86400)
g1582ns100=$(expr $g1582 \* 10000000)

# Converts Denary to Hex
dec2hex()
{
    printf "%x" $1
}

setVariant()
{
    # set Variant  RFC 4122  01xx xxxx xxxx xxxx
	printf "%x" $(((0x$1 & 0x3fff) | 0x8000))
}

# Sets version to 4 for UUID4
setVersion4()
{
	#set ver 4
    #Set the two most significant bits (bits 6 and 7) of the clock_seq_hi_and_reserved (8) to zero and one, respectively.	
	printf "%x" $(((0x$1 & 0x0fff) | 0x4000))
}

# For MAC Address
setMulticast()
{
    printf "%x" $((0x$1 | 0x010000000000))
}

generate_uuid_v1()
{
    inmac=$1
    mac=$(echo "${inmac//:}")

    seconds=$(date -u +%s)
    snano100=$(expr $seconds \* 10000000)
    nano=$(date -u +%N)
    nano100=$(expr $nano / 100)

    now100=$(expr $snano100 + $nano100 + $g1582ns100)

    # appends the version "1" at beginning
    hex_time_100=1$(dec2hex $now100)

    # Print out UUID v1
    # first 32 bits then dash (time_low)
    printf "%s-" ${hex_time_100: -8}
    # next 16 bits then a dash (time_mid)
    printf "%s-" ${hex_time_100: -12: 4}
    #time_hi and version
    printf "%s-" ${hex_time_100: -16: 4}

    clock=$(tr -dc a-f0-9 < /dev/urandom | dd bs=8 count=1 2> /dev/null)
    clock=$(setVariant $clock)

    if [ -z "${mac}" ]; then
        # mac is not set or set to an empty string, randomize
        mac=$(tr -dc a-f0-9 < /dev/urandom | dd bs=12 count=1 2> /dev/null)
        mac=$(setMulticast $mac)
    fi

    # print clock and MAC
    printf "%s-%s" $clock $mac
    echo 
}



# Selecting a Version
command=$1
shift

case "$command" in
    "1") # UUID 1
        generate_uuid_v1 $1
        ;;
    "4") # UUID 4
        echo UUID 4
        ;;
    *) # Exit if no parameters are given
        exit 1
        ;;
esac