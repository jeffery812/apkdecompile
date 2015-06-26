.class public abstract Lorg/springframework/web/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# static fields
.field private static final HOST_PATTERN:Ljava/lang/String; = "([^/?#:]*)"

.field private static final HTTP_PATTERN:Ljava/lang/String; = "(http|https):"

.field private static final HTTP_URL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LAST_PATTERN:Ljava/lang/String; = "(.*)"

.field private static final PATH_PATTERN:Ljava/lang/String; = "([^?#]*)"

.field private static final PORT_PATTERN:Ljava/lang/String; = "(\\d*)"

.field private static final QUERY_PATTERN:Ljava/lang/String; = "([^#]*)"

.field private static final SCHEME_PATTERN:Ljava/lang/String; = "([^:/?#]+):"

.field private static final URI_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final USERINFO_PATTERN:Ljava/lang/String; = "([^@/]*)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "^(([^:/?#]+):)?(//(([^@/]*)@)?([^/?#:]*)(:(\\d*))?)?([^?#]*)(\\?([^#]*))?(#(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/springframework/web/util/UriUtils;->URI_PATTERN:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "^(http|https):(//(([^@/]*)@)?([^/?#:]*)(:(\\d*))?)?([^?#]*)(\\?(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/springframework/web/util/UriUtils;->HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "source"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    const/4 v10, -0x1

    .line 337
    const-string v9, "\'source\' must not be null"

    invoke-static {p0, v9}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    const-string v9, "\'encoding\' must not be empty"

    invoke-static {p1, v9}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 340
    .local v7, length:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 341
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 342
    .local v2, changed:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_4

    .line 343
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 344
    .local v1, ch:I
    const/16 v9, 0x25

    if-ne v1, v9, :cond_3

    .line 345
    add-int/lit8 v9, v5, 0x2

    if-ge v9, v7, :cond_2

    .line 346
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 347
    .local v3, hex1:C
    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 348
    .local v4, hex2:C
    invoke-static {v3, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    .line 349
    .local v8, u:I
    invoke-static {v4, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 350
    .local v6, l:I
    if-eq v8, v10, :cond_0

    if-ne v6, v10, :cond_1

    .line 351
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid encoded sequence \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 353
    :cond_1
    shl-int/lit8 v9, v8, 0x4

    add-int/2addr v9, v6

    int-to-char v9, v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 354
    add-int/lit8 v5, v5, 0x2

    .line 355
    const/4 v2, 0x1

    .line 342
    .end local v3           #hex1:C
    .end local v4           #hex2:C
    .end local v6           #l:I
    .end local v8           #u:I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 358
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid encoded sequence \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 362
    :cond_3
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 365
    .end local v1           #ch:I
    :cond_4
    if-eqz v2, :cond_5

    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {p0, v9, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_5
    return-object p0
.end method

.method public static encodeAuthority(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authority"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->AUTHORITY:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeFragment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fragment"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 315
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->FRAGMENT:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->HOST:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHttpUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "httpUrl"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v7, "\'httpUrl\' must not be null"

    invoke-static {p0, v7}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    const-string v7, "\'encoding\' must not be empty"

    invoke-static {p1, v7}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v7, Lorg/springframework/web/util/UriUtils;->HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 130
    .local v9, m:Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    const/4 v7, 0x1

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, scheme:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, authority:Ljava/lang/String;
    const/4 v7, 0x4

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, userinfo:Ljava/lang/String;
    const/4 v7, 0x5

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, host:Ljava/lang/String;
    const/4 v7, 0x7

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, portString:Ljava/lang/String;
    const/16 v7, 0x8

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, path:Ljava/lang/String;
    const/16 v7, 0xa

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, query:Ljava/lang/String;
    const/4 v7, 0x0

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lorg/springframework/web/util/UriUtils;->encodeUriComponents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 142
    .end local v0           #scheme:Ljava/lang/String;
    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #userinfo:Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #portString:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #query:Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] is not a valid HTTP URL"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static encodePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->PATH:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePathSegment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "segment"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->PATH_SEGMENT:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "port"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->PORT:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->QUERY:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeQueryParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "queryParam"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->QUERY_PARAM:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "scheme"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->SCHEME:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "uri"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v8, "\'uri\' must not be null"

    invoke-static {p0, v8}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v8, "\'encoding\' must not be empty"

    invoke-static {p1, v8}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v8, Lorg/springframework/web/util/UriUtils;->URI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 90
    .local v9, m:Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 91
    const/4 v8, 0x2

    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, scheme:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, authority:Ljava/lang/String;
    const/4 v8, 0x5

    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, userinfo:Ljava/lang/String;
    const/4 v8, 0x6

    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, host:Ljava/lang/String;
    const/16 v8, 0x8

    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, port:Ljava/lang/String;
    const/16 v8, 0x9

    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, path:Ljava/lang/String;
    const/16 v8, 0xb

    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, query:Ljava/lang/String;
    const/16 v8, 0xd

    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .local v7, fragment:Ljava/lang/String;
    move-object v8, p1

    .line 100
    invoke-static/range {v0 .. v8}, Lorg/springframework/web/util/UriUtils;->encodeUriComponents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 103
    .end local v0           #scheme:Ljava/lang/String;
    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #userinfo:Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #port:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #query:Ljava/lang/String;
    .end local v7           #fragment:Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] is not a valid URI"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static encodeUriComponents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "scheme"
    .parameter "authority"
    .parameter "userInfo"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3a

    .line 167
    const-string v1, "\'encoding\' must not be empty"

    invoke-static {p8, v1}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 171
    invoke-static {p0, p8}, Lorg/springframework/web/util/UriUtils;->encodeScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    if-eqz p1, :cond_3

    .line 176
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    if-eqz p2, :cond_1

    .line 178
    invoke-static {p2, p8}, Lorg/springframework/web/util/UriUtils;->encodeUserInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    if-eqz p3, :cond_2

    .line 182
    invoke-static {p3, p8}, Lorg/springframework/web/util/UriUtils;->encodeHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_2
    if-eqz p4, :cond_3

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {p4, p8}, Lorg/springframework/web/util/UriUtils;->encodePort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_3
    invoke-static {p5, p8}, Lorg/springframework/web/util/UriUtils;->encodePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    if-eqz p6, :cond_4

    .line 193
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {p6, p8}, Lorg/springframework/web/util/UriUtils;->encodeQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_4
    if-eqz p7, :cond_5

    .line 198
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {p7, p8}, Lorg/springframework/web/util/UriUtils;->encodeFragment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encodeUserInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "userInfo"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->USER_INFO:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {p0, p1, v0}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
