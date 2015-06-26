.class public Lorg/springframework/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Lorg/springframework/util/MultiValueMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/springframework/util/MultiValueMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCEPT:Ljava/lang/String; = "Accept"

.field private static final ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final ALLOW:Ljava/lang/String; = "Allow"

.field private static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field private static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final DATE:Ljava/lang/String; = "Date"

.field private static final DATE_FORMATS:[Ljava/lang/String; = null

.field private static final ETAG:Ljava/lang/String; = "ETag"

.field private static final EXPIRES:Ljava/lang/String; = "Expires"

.field private static GMT:Ljava/util/TimeZone; = null

.field private static final IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field private static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field private static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field private static final LOCATION:Ljava/lang/String; = "Location"

.field private static final PRAGMA:Ljava/lang/String; = "Pragma"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM dd HH:mm:ss yyyy"

    aput-object v2, v0, v1

    sput-object v0, Lorg/springframework/http/HttpHeaders;->DATE_FORMATS:[Ljava/lang/String;

    .line 105
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/springframework/http/HttpHeaders;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lorg/springframework/util/LinkedCaseInsensitiveMap;

    const/16 v1, 0x8

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/springframework/util/LinkedCaseInsensitiveMap;-><init>(ILjava/util/Locale;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/springframework/http/HttpHeaders;-><init>(Ljava/util/Map;Z)V

    .line 134
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Z)V
    .locals 6
    .parameter
    .parameter "readOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v4, "\'headers\' must not be null"

    invoke-static {p1, v4}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    if-eqz p2, :cond_1

    .line 116
    new-instance v2, Lorg/springframework/util/LinkedCaseInsensitiveMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Lorg/springframework/util/LinkedCaseInsensitiveMap;-><init>(ILjava/util/Locale;)V

    .line 118
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 120
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    .line 127
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1
    return-void

    .line 125
    :cond_1
    iput-object p1, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    goto :goto_1
.end method

.method private getFirstDate(Ljava/lang/String;)J
    .locals 9
    .parameter "headerName"

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, headerValue:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 579
    const-wide/16 v6, -0x1

    .line 585
    :goto_0
    return-wide v6

    .line 581
    :cond_0
    sget-object v0, Lorg/springframework/http/HttpHeaders;->DATE_FORMATS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 582
    .local v1, dateFormat:Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 583
    .local v5, simpleDateFormat:Ljava/text/SimpleDateFormat;
    sget-object v6, Lorg/springframework/http/HttpHeaders;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 585
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_0

    .line 587
    :catch_0
    move-exception v6

    .line 581
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 591
    .end local v1           #dateFormat:Ljava/lang/String;
    .end local v5           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot parse date value \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" for \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" header"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static readOnlyHttpHeaders(Lorg/springframework/http/HttpHeaders;)Lorg/springframework/http/HttpHeaders;
    .locals 2
    .parameter "headers"

    .prologue
    .line 140
    new-instance v0, Lorg/springframework/http/HttpHeaders;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/springframework/http/HttpHeaders;-><init>(Ljava/util/Map;Z)V

    return-object v0
.end method

.method private setDate(Ljava/lang/String;J)V
    .locals 3
    .parameter "headerName"
    .parameter "date"

    .prologue
    .line 596
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lorg/springframework/http/HttpHeaders;->DATE_FORMATS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 597
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    sget-object v1, Lorg/springframework/http/HttpHeaders;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 598
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "headerName"
    .parameter "headerValue"

    .prologue
    .line 622
    iget-object v1, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 623
    .local v0, headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 625
    .restart local v0       #headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 694
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 669
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 673
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 711
    if-ne p0, p1, :cond_0

    .line 712
    const/4 v1, 0x1

    .line 718
    :goto_0
    return v1

    .line 714
    :cond_0
    instance-of v1, p1, Lorg/springframework/http/HttpHeaders;

    if-nez v1, :cond_1

    .line 715
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 717
    check-cast v0, Lorg/springframework/http/HttpHeaders;

    .line 718
    .local v0, otherHeaders:Lorg/springframework/http/HttpHeaders;
    iget-object v1, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    iget-object v2, v0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/springframework/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAccept()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    const-string v1, "Accept"

    invoke-virtual {p0, v1}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/springframework/http/MediaType;->parseMediaTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getAcceptCharset()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/nio/charset/Charset;>;"
    const-string v9, "Accept-Charset"

    invoke-virtual {p0, v9}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 186
    const-string v9, ",\\s*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, tokens:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 188
    .local v6, token:Ljava/lang/String;
    const/16 v9, 0x3b

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 190
    .local v4, paramIdx:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_1

    .line 191
    move-object v1, v6

    .line 196
    .local v1, charsetName:Ljava/lang/String;
    :goto_1
    const-string v9, "*"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 197
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v1           #charsetName:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #charsetName:Ljava/lang/String;
    goto :goto_1

    .line 201
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #charsetName:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #paramIdx:I
    .end local v6           #token:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public getAcceptEncoding()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/ContentCodingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    const-string v1, "Accept-Encoding"

    invoke-virtual {p0, v1}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/springframework/http/ContentCodingType;->parseCodingTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getAcceptLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string v0, "Accept-Language"

    invoke-virtual {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllow()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/springframework/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    const-string v7, "Allow"

    invoke-virtual {p0, v7}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .local v0, allowedMethod:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/HttpMethod;>;"
    const-string v7, ",\\s*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, tokens:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 267
    .local v4, token:Ljava/lang/String;
    invoke-static {v4}, Lorg/springframework/http/HttpMethod;->valueOf(Ljava/lang/String;)Lorg/springframework/http/HttpMethod;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v4           #token:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v7

    .line 272
    .end local v0           #allowedMethod:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/HttpMethod;>;"
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #tokens:[Ljava/lang/String;
    :goto_1
    return-object v7

    :cond_1
    const-class v7, Lorg/springframework/http/HttpMethod;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    goto :goto_1
.end method

.method public getAuthorization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const-string v0, "Authorization"

    invoke-virtual {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/ContentCodingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    const-string v1, "Content-Encoding"

    invoke-virtual {p0, v1}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/springframework/http/ContentCodingType;->parseCodingTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 366
    const-string v1, "Content-Length"

    invoke-virtual {p0, v1}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getContentType()Lorg/springframework/http/MediaType;
    .locals 2

    .prologue
    .line 386
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/springframework/http/MediaType;->parseMediaType(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 406
    const-string v0, "Date"

    invoke-direct {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirstDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    const-string v0, "ETag"

    invoke-virtual {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .prologue
    .line 444
    const-string v0, "Expires"

    invoke-direct {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirstDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "headerName"

    .prologue
    .line 609
    iget-object v1, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 610
    .local v0, headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIfNoneMatch()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "If-None-Match"

    invoke-virtual {p0, v7}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 498
    const-string v7, ",\\s*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 499
    .local v5, tokens:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 500
    .local v4, token:Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #tokens:[Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public getIfNotModifiedSince()J
    .locals 2

    .prologue
    .line 462
    const-string v0, "If-Modified-Since"

    invoke-direct {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirstDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 521
    const-string v0, "Last-Modified"

    invoke-direct {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirstDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()Ljava/net/URI;
    .locals 2

    .prologue
    .line 538
    const-string v1, "Location"

    invoke-virtual {p0, v1}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPragma()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    const-string v0, "Pragma"

    invoke-virtual {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0}, Lorg/springframework/http/HttpHeaders;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/HttpHeaders;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    .local p2, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/String;+Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 690
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/springframework/http/HttpHeaders;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "headerName"
    .parameter "headerValue"

    .prologue
    .line 639
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 640
    .local v0, headerValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v1, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    return-void
.end method

.method public setAccept(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, acceptableMediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    const-string v0, "Accept"

    invoke-static {p1}, Lorg/springframework/http/MediaType;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setAcceptCharset(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, acceptableCharsets:Ljava/util/List;,"Ljava/util/List<Ljava/nio/charset/Charset;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    .line 169
    .local v1, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    .end local v1           #charset:Ljava/nio/charset/Charset;
    :cond_1
    const-string v3, "Accept-Charset"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public setAcceptEncoding(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/ContentCodingType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, acceptableEncodingTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/ContentCodingType;>;"
    const-string v0, "Accept-Encoding"

    invoke-static {p1}, Lorg/springframework/http/ContentCodingType;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public setAcceptEncoding(Lorg/springframework/http/ContentCodingType;)V
    .locals 1
    .parameter "acceptableEncodingType"

    .prologue
    .line 219
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/springframework/http/HttpHeaders;->setAcceptEncoding(Ljava/util/List;)V

    .line 220
    return-void
.end method

.method public setAcceptLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "acceptLanguage"

    .prologue
    .line 237
    const-string v0, "Accept-Language"

    invoke-virtual {p0, v0, p1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 646
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public setAllow(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/springframework/http/HttpMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, allowedMethods:Ljava/util/Set;,"Ljava/util/Set<Lorg/springframework/http/HttpMethod;>;"
    const-string v0, "Allow"

    invoke-static {p1}, Lorg/springframework/util/StringUtils;->collectionToCommaDelimitedString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setAuthorization(Lorg/springframework/http/HttpAuthentication;)V
    .locals 2
    .parameter "httpAuthentication"

    .prologue
    .line 281
    const-string v0, "Authorization"

    invoke-virtual {p1}, Lorg/springframework/http/HttpAuthentication;->getHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1
    .parameter "cacheControl"

    .prologue
    .line 297
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, p1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public setContentDispositionFormData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "filename"

    .prologue
    const/16 v2, 0x22

    .line 314
    const-string v1, "\'name\' must not be null"

    invoke-static {p1, v1}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    if-eqz p2, :cond_0

    .line 318
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public setContentEncoding(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/ContentCodingType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, contentEncodingTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/ContentCodingType;>;"
    const-string v0, "Content-Encoding"

    invoke-static {p1}, Lorg/springframework/http/ContentCodingType;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setContentEncoding(Lorg/springframework/http/ContentCodingType;)V
    .locals 1
    .parameter "contentEncodingType"

    .prologue
    .line 339
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/springframework/http/HttpHeaders;->setContentEncoding(Ljava/util/List;)V

    .line 340
    return-void
.end method

.method public setContentLength(J)V
    .locals 2
    .parameter "contentLength"

    .prologue
    .line 357
    const-string v0, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public setContentType(Lorg/springframework/http/MediaType;)V
    .locals 4
    .parameter "mediaType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->isWildcardType()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "\'Content-Type\' cannot contain wildcard type \'*\'"

    invoke-static {v0, v3}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->isWildcardSubtype()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "\'Content-Type\' cannot contain wildcard subtype \'*\'"

    invoke-static {v1, v0}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 377
    const-string v0, "Content-Type"

    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void

    :cond_0
    move v0, v2

    .line 375
    goto :goto_0

    :cond_1
    move v1, v2

    .line 376
    goto :goto_1
.end method

.method public setDate(J)V
    .locals 1
    .parameter "date"

    .prologue
    .line 396
    const-string v0, "Date"

    invoke-direct {p0, v0, p1, p2}, Lorg/springframework/http/HttpHeaders;->setDate(Ljava/lang/String;J)V

    .line 397
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 2
    .parameter "eTag"

    .prologue
    .line 414
    if-eqz p1, :cond_1

    .line 415
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "W/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Invalid eTag, does not start with W/ or \""

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 416
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Invalid eTag, does not end with \""

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 418
    :cond_1
    const-string v0, "ETag"

    invoke-virtual {p0, v0, p1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void

    .line 415
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpires(J)V
    .locals 1
    .parameter "expires"

    .prologue
    .line 435
    const-string v0, "Expires"

    invoke-direct {p0, v0, p1, p2}, Lorg/springframework/http/HttpHeaders;->setDate(Ljava/lang/String;J)V

    .line 436
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .parameter "ifModifiedSince"

    .prologue
    .line 453
    const-string v0, "If-Modified-Since"

    invoke-direct {p0, v0, p1, p2}, Lorg/springframework/http/HttpHeaders;->setDate(Ljava/lang/String;J)V

    .line 454
    return-void
.end method

.method public setIfNoneMatch(Ljava/lang/String;)V
    .locals 1
    .parameter "ifNoneMatch"

    .prologue
    .line 470
    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public setIfNoneMatch(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, ifNoneMatchList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 481
    .local v1, ifNoneMatch:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 486
    .end local v1           #ifNoneMatch:Ljava/lang/String;
    :cond_1
    const-string v3, "If-None-Match"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public setLastModified(J)V
    .locals 1
    .parameter "lastModified"

    .prologue
    .line 512
    const-string v0, "Last-Modified"

    invoke-direct {p0, v0, p1, p2}, Lorg/springframework/http/HttpHeaders;->setDate(Ljava/lang/String;J)V

    .line 513
    return-void
.end method

.method public setLocation(Ljava/net/URI;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 529
    const-string v0, "Location"

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public setPragma(Ljava/lang/String;)V
    .locals 1
    .parameter "pragma"

    .prologue
    .line 547
    const-string v0, "Pragma"

    invoke-virtual {p0, v0, p1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 563
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toSingleValueMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    new-instance v2, Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 652
    .local v2, singleValueMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 653
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 655
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lorg/springframework/http/HttpHeaders;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
