FROM fluent/fluent-bit:latest

COPY ./total.conf /fluent-bit/etc/fluent-bit.conf
# for AWS FireLens (auto-configured fluent)
COPY ./total.conf /fluent-bit/etc/fluent-bit-extend.conf

# CMD [ "/fluent-bit/bin/fluent-bit", "-c", "/fluent-bit/etc/total.conf"]