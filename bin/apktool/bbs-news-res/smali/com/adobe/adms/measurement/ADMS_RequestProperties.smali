.class public final Lcom/adobe/adms/measurement/ADMS_RequestProperties;
.super Ljava/lang/Object;
.source "ADMS_RequestProperties.java"


# instance fields
.field protected headers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected url:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method protected static parseRequestProperties(Ljava/lang/String;)Lcom/adobe/adms/measurement/ADMS_RequestProperties;
    .locals 8
    .parameter "request"

    .prologue
    const/4 v7, 0x0

    .line 30
    new-instance v4, Lcom/adobe/adms/measurement/ADMS_RequestProperties;

    invoke-direct {v4}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;-><init>()V

    .line 32
    .local v4, requestProperties:Lcom/adobe/adms/measurement/ADMS_RequestProperties;
    const/4 v0, 0x0

    .line 38
    .local v0, headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "\t"

    invoke-static {v6, p0}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, requestParts:[Ljava/lang/String;
    array-length v6, v3

    if-lez v6, :cond_2

    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 40
    aget-object v6, v3, v7

    invoke-virtual {v4, v6}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->setUrl(Ljava/lang/String;)V

    .line 41
    const/4 v2, 0x1

    .local v2, requestPartNum:I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 42
    aget-object v1, v3, v2

    .line 43
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    .line 44
    add-int/lit8 v6, v2, 0x1

    aget-object v5, v3, v6

    .line 45
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 46
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 49
    .restart local v0       #headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 54
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #requestPartNum:I
    :cond_2
    invoke-virtual {v4, v0}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->setHeaders(Ljava/util/Hashtable;)V

    .line 56
    return-object v4
.end method

.method protected static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "delim"
    .parameter "str"

    .prologue
    const/4 v4, 0x0

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, delimPos:I
    const/4 v2, 0x1

    .line 66
    .local v2, partNum:I
    :goto_0
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 70
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    .line 72
    .local v1, partList:[Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 73
    aput-object p1, v1, v4

    .line 84
    :goto_1
    return-object v1

    .line 75
    :cond_1
    const/4 v2, 0x0

    .line 76
    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 77
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    :cond_2
    aput-object p1, v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected getHeaders()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->headers:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected setHeaders(Ljava/util/Hashtable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->headers:Ljava/util/Hashtable;

    .line 23
    return-void
.end method

.method protected setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->url:Ljava/lang/String;

    .line 15
    return-void
.end method
