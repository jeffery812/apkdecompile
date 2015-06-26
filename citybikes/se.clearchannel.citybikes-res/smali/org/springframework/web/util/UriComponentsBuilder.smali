.class public Lorg/springframework/web/util/UriComponentsBuilder;
.super Ljava/lang/Object;
.source "UriComponentsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;,
        Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;,
        Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;,
        Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
    }
.end annotation


# static fields
.field private static final HOST_PATTERN:Ljava/lang/String; = "([^/?#:]*)"

.field private static final HTTP_PATTERN:Ljava/lang/String; = "(http|https):"

.field private static final HTTP_URL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LAST_PATTERN:Ljava/lang/String; = "(.*)"

.field private static NULL_PATH_COMPONENT_BUILDER:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder; = null

.field private static final PATH_PATTERN:Ljava/lang/String; = "([^?#]*)"

.field private static final PORT_PATTERN:Ljava/lang/String; = "(\\d*)"

.field private static final QUERY_PARAM_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final QUERY_PATTERN:Ljava/lang/String; = "([^#]*)"

.field private static final SCHEME_PATTERN:Ljava/lang/String; = "([^:/?#]+):"

.field private static final URI_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final USERINFO_PATTERN:Ljava/lang/String; = "([^@/]*)"


# instance fields
.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

.field private port:I

.field private final queryParams:Lorg/springframework/util/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scheme:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "([^&=]+)=?([^&=]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/springframework/web/util/UriComponentsBuilder;->QUERY_PARAM_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "^(([^:/?#]+):)?(//(([^@/]*)@)?([^/?#:]*)(:(\\d*))?)?([^?#]*)(\\?([^#]*))?(#(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/springframework/web/util/UriComponentsBuilder;->URI_PATTERN:Ljava/util/regex/Pattern;

    .line 79
    const-string v0, "^(http|https):(//(([^@/]*)@)?([^/?#:]*)(:(\\d*))?)?([^?#]*)(\\?(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/springframework/web/util/UriComponentsBuilder;->HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 577
    new-instance v0, Lorg/springframework/web/util/UriComponentsBuilder$1;

    invoke-direct {v0}, Lorg/springframework/web/util/UriComponentsBuilder$1;-><init>()V

    sput-object v0, Lorg/springframework/web/util/UriComponentsBuilder;->NULL_PATH_COMPONENT_BUILDER:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->port:I

    .line 92
    sget-object v0, Lorg/springframework/web/util/UriComponentsBuilder;->NULL_PATH_COMPONENT_BUILDER:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    .line 94
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->queryParams:Lorg/springframework/util/MultiValueMap;

    .line 106
    return-void
.end method

.method public static fromHttpUrl(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 6
    .parameter "httpUrl"

    .prologue
    .line 180
    const-string v3, "\'httpUrl\' must not be null"

    invoke-static {p0, v3}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v3, Lorg/springframework/web/util/UriComponentsBuilder;->HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 182
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    new-instance v0, Lorg/springframework/web/util/UriComponentsBuilder;

    invoke-direct {v0}, Lorg/springframework/web/util/UriComponentsBuilder;-><init>()V

    .line 185
    .local v0, builder:Lorg/springframework/web/util/UriComponentsBuilder;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->scheme(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 186
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->userInfo(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 187
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->host(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 188
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, port:Ljava/lang/String;
    invoke-static {v2}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->port(I)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 192
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->path(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 193
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->query(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 195
    return-object v0

    .line 198
    .end local v0           #builder:Lorg/springframework/web/util/UriComponentsBuilder;
    .end local v2           #port:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is not a valid HTTP URL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static fromPath(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 1
    .parameter "path"

    .prologue
    .line 126
    new-instance v0, Lorg/springframework/web/util/UriComponentsBuilder;

    invoke-direct {v0}, Lorg/springframework/web/util/UriComponentsBuilder;-><init>()V

    .line 127
    .local v0, builder:Lorg/springframework/web/util/UriComponentsBuilder;
    invoke-virtual {v0, p0}, Lorg/springframework/web/util/UriComponentsBuilder;->path(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 128
    return-object v0
.end method

.method public static fromUri(Ljava/net/URI;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 1
    .parameter "uri"

    .prologue
    .line 138
    new-instance v0, Lorg/springframework/web/util/UriComponentsBuilder;

    invoke-direct {v0}, Lorg/springframework/web/util/UriComponentsBuilder;-><init>()V

    .line 139
    .local v0, builder:Lorg/springframework/web/util/UriComponentsBuilder;
    invoke-virtual {v0, p0}, Lorg/springframework/web/util/UriComponentsBuilder;->uri(Ljava/net/URI;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 140
    return-object v0
.end method

.method public static fromUriString(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 6
    .parameter "uri"

    .prologue
    .line 150
    const-string v3, "\'uri\' must not be empty"

    invoke-static {p0, v3}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v3, Lorg/springframework/web/util/UriComponentsBuilder;->URI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 152
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    new-instance v0, Lorg/springframework/web/util/UriComponentsBuilder;

    invoke-direct {v0}, Lorg/springframework/web/util/UriComponentsBuilder;-><init>()V

    .line 155
    .local v0, builder:Lorg/springframework/web/util/UriComponentsBuilder;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->scheme(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 156
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->userInfo(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 157
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->host(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 158
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, port:Ljava/lang/String;
    invoke-static {v2}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->port(I)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 162
    :cond_0
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->path(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 163
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->query(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 164
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->fragment(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 166
    return-object v0

    .line 169
    .end local v0           #builder:Lorg/springframework/web/util/UriComponentsBuilder;
    .end local v2           #port:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is not a valid URI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static newInstance()Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lorg/springframework/web/util/UriComponentsBuilder;

    invoke-direct {v0}, Lorg/springframework/web/util/UriComponentsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lorg/springframework/web/util/UriComponents;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/springframework/web/util/UriComponentsBuilder;->build(Z)Lorg/springframework/web/util/UriComponents;

    move-result-object v0

    return-object v0
.end method

.method public build(Z)Lorg/springframework/web/util/UriComponents;
    .locals 10
    .parameter "encoded"

    .prologue
    .line 222
    new-instance v0, Lorg/springframework/web/util/UriComponents;

    iget-object v1, p0, Lorg/springframework/web/util/UriComponentsBuilder;->scheme:Ljava/lang/String;

    iget-object v2, p0, Lorg/springframework/web/util/UriComponentsBuilder;->userInfo:Ljava/lang/String;

    iget-object v3, p0, Lorg/springframework/web/util/UriComponentsBuilder;->host:Ljava/lang/String;

    iget v4, p0, Lorg/springframework/web/util/UriComponentsBuilder;->port:I

    iget-object v5, p0, Lorg/springframework/web/util/UriComponentsBuilder;->pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    invoke-interface {v5}, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;->build()Lorg/springframework/web/util/UriComponents$PathComponent;

    move-result-object v5

    iget-object v6, p0, Lorg/springframework/web/util/UriComponentsBuilder;->queryParams:Lorg/springframework/util/MultiValueMap;

    iget-object v7, p0, Lorg/springframework/web/util/UriComponentsBuilder;->fragment:Ljava/lang/String;

    const/4 v9, 0x1

    move v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/springframework/web/util/UriComponents;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/springframework/web/util/UriComponents$PathComponent;Lorg/springframework/util/MultiValueMap;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public buildAndExpand(Ljava/util/Map;)Lorg/springframework/web/util/UriComponents;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/web/util/UriComponents;"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, uriVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/springframework/web/util/UriComponentsBuilder;->build(Z)Lorg/springframework/web/util/UriComponents;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/springframework/web/util/UriComponents;->expand(Ljava/util/Map;)Lorg/springframework/web/util/UriComponents;

    move-result-object v0

    return-object v0
.end method

.method public varargs buildAndExpand([Ljava/lang/Object;)Lorg/springframework/web/util/UriComponents;
    .locals 1
    .parameter "uriVariableValues"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/springframework/web/util/UriComponentsBuilder;->build(Z)Lorg/springframework/web/util/UriComponents;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/springframework/web/util/UriComponents;->expand([Ljava/lang/Object;)Lorg/springframework/web/util/UriComponents;

    move-result-object v0

    return-object v0
.end method

.method public fragment(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 1
    .parameter "fragment"

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    const-string v0, "\'fragment\' must not be empty"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iput-object p1, p0, Lorg/springframework/web/util/UriComponentsBuilder;->fragment:Ljava/lang/String;

    .line 462
    :goto_0
    return-object p0

    .line 460
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->fragment:Ljava/lang/String;

    goto :goto_0
.end method

.method public host(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 0
    .parameter "host"

    .prologue
    .line 317
    iput-object p1, p0, Lorg/springframework/web/util/UriComponentsBuilder;->host:Ljava/lang/String;

    .line 318
    return-object p0
.end method

.method public path(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 1
    .parameter "path"

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    invoke-interface {v0, p1}, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;->appendPath(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    .line 346
    :goto_0
    return-object p0

    .line 344
    :cond_0
    sget-object v0, Lorg/springframework/web/util/UriComponentsBuilder;->NULL_PATH_COMPONENT_BUILDER:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    goto :goto_0
.end method

.method public varargs pathSegment([Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 1
    .parameter "pathSegments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 369
    const-string v0, "\'segments\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    invoke-interface {v0, p1}, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;->appendPathSegments([Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    .line 371
    return-object p0
.end method

.method public port(I)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 2
    .parameter "port"

    .prologue
    .line 328
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "\'port\' must not be < -1"

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 329
    iput p1, p0, Lorg/springframework/web/util/UriComponentsBuilder;->port:I

    .line 330
    return-object p0

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 6
    .parameter "query"

    .prologue
    const/4 v5, 0x1

    .line 381
    if-eqz p1, :cond_0

    .line 382
    sget-object v3, Lorg/springframework/web/util/UriComponentsBuilder;->QUERY_PARAM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 383
    .local v0, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, value:Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p0, v1, v3}, Lorg/springframework/web/util/UriComponentsBuilder;->queryParam(Ljava/lang/String;[Ljava/lang/Object;)Lorg/springframework/web/util/UriComponentsBuilder;

    goto :goto_0

    .line 390
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lorg/springframework/web/util/UriComponentsBuilder;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v3}, Lorg/springframework/util/MultiValueMap;->clear()V

    .line 392
    :cond_1
    return-object p0
.end method

.method public varargs queryParam(Ljava/lang/String;[Ljava/lang/Object;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 7
    .parameter "name"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 417
    const-string v6, "\'name\' must not be null"

    invoke-static {p1, v6}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-static {p2}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 419
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 420
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, valueAsString:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lorg/springframework/web/util/UriComponentsBuilder;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v6, p1, v4}, Lorg/springframework/util/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #valueAsString:Ljava/lang/String;
    :cond_0
    move-object v4, v5

    .line 420
    goto :goto_1

    .line 425
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lorg/springframework/web/util/UriComponentsBuilder;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v6, p1, v5}, Lorg/springframework/util/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 427
    :cond_2
    return-object p0
.end method

.method public replacePath(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 1
    .parameter "path"

    .prologue
    .line 356
    sget-object v0, Lorg/springframework/web/util/UriComponentsBuilder;->NULL_PATH_COMPONENT_BUILDER:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    .line 357
    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponentsBuilder;->path(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 358
    return-object p0
.end method

.method public replaceQuery(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 1
    .parameter "query"

    .prologue
    .line 402
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v0}, Lorg/springframework/util/MultiValueMap;->clear()V

    .line 403
    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponentsBuilder;->query(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 404
    return-object p0
.end method

.method public varargs replaceQueryParam(Ljava/lang/String;[Ljava/lang/Object;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 1
    .parameter "name"
    .parameter "values"

    .prologue
    .line 439
    const-string v0, "\'name\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v0, p1}, Lorg/springframework/util/MultiValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-static {p2}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0, p1, p2}, Lorg/springframework/web/util/UriComponentsBuilder;->queryParam(Ljava/lang/String;[Ljava/lang/Object;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 444
    :cond_0
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 0
    .parameter "scheme"

    .prologue
    .line 293
    iput-object p1, p0, Lorg/springframework/web/util/UriComponentsBuilder;->scheme:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public uri(Ljava/net/URI;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 3
    .parameter "uri"

    .prologue
    .line 258
    const-string v0, "\'uri\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opaque URI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->scheme:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->userInfo:Ljava/lang/String;

    .line 266
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->host:Ljava/lang/String;

    .line 269
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 270
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->port:I

    .line 272
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    new-instance v0, Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;-><init>(Ljava/lang/String;Lorg/springframework/web/util/UriComponentsBuilder$1;)V

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->pathBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    .line 275
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v0}, Lorg/springframework/util/MultiValueMap;->clear()V

    .line 277
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/springframework/web/util/UriComponentsBuilder;->query(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    .line 279
    :cond_4
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 280
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder;->fragment:Ljava/lang/String;

    .line 282
    :cond_5
    return-object p0

    .line 259
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public userInfo(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
    .locals 0
    .parameter "userInfo"

    .prologue
    .line 305
    iput-object p1, p0, Lorg/springframework/web/util/UriComponentsBuilder;->userInfo:Ljava/lang/String;

    .line 306
    return-object p0
.end method
