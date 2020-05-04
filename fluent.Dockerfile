FROM fluent/fluent-bit:latest

COPY ./total.conf /fluent-bit/etc/fluent-bit.conf

# CMD [ "/fluent-bit/bin/fluent-bit", "-c", "/fluent-bit/etc/total.conf"]