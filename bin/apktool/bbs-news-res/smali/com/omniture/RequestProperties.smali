.class public Lcom/omniture/RequestProperties;
.super Ljava/lang/Object;
.source "RequestProperties.java"


# instance fields
.field protected headers:Ljava/util/Hashtable;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static parseRequestProperties(Ljava/lang/String;)Lcom/omniture/RequestProperties;
    .locals 8
    .parameter "request"

    .prologue
    const/4 v7, 0x0

    .line 32
    new-instance v4, Lcom/omniture/RequestProperties;

    invoke-direct {v4}, Lcom/omniture/RequestProperties;-><init>()V

    .line 34
    .local v4, requestProperties:Lcom/omniture/RequestProperties;
    const/4 v0, 0x0

    .line 40
    .local v0, headers:Ljava/util/Hashtable;
    const-string v6, "\t"

    invoke-static {v6, p0}, Lcom/omniture/AppMeasurementBase;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, requestParts:[Ljava/lang/String;
    array-length v6, v3

    if-lez v6, :cond_2

    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 42
    aget-object v6, v3, v7

    invoke-virtual {v4, v6}, Lcom/omniture/RequestProperties;->setUrl(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    .local v2, requestPartNum:I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 44
    aget-object v1, v3, v2

    .line 45
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v6, ""

    if-eq v1, v6, :cond_1

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    .line 46
    add-int/lit8 v6, v2, 0x1

    aget-object v5, v3, v6

    .line 47
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #headers:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 51
    .restart local v0       #headers:Ljava/util/Hashtable;
    :cond_0
    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 56
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #requestPartNum:I
    :cond_2
    invoke-virtual {v4, v0}, Lcom/omniture/RequestProperties;->setHeaders(Ljava/util/Hashtable;)V

    .line 58
    return-object v4
.end method


# virtual methods
.method public getHeaders()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/omniture/RequestProperties;->headers:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/omniture/RequestProperties;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHeaders(Ljava/util/Hashtable;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/omniture/RequestProperties;->headers:Ljava/util/Hashtable;

    .line 25
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/omniture/RequestProperties;->url:Ljava/lang/String;

    .line 17
    return-void
.end method
