.class public Lcom/omniture/RequestHandlerSe;
.super Lcom/omniture/RequestHandlerSe13;
.source "RequestHandlerSe.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/omniture/RequestHandlerSe13;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter "url"

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, requestURL:Ljava/net/URL;
    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 29
    .local v0, connectionSecure:Ljavax/net/ssl/HttpsURLConnection;
    new-instance v2, Lcom/omniture/RequestHandlerSe$1;

    invoke-direct {v2, p0}, Lcom/omniture/RequestHandlerSe$1;-><init>(Lcom/omniture/RequestHandlerSe;)V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 41
    .end local v0           #connectionSecure:Ljavax/net/ssl/HttpsURLConnection;
    .end local v1           #requestURL:Ljava/net/URL;
    :goto_0
    return-object v0

    .line 36
    .restart local v1       #requestURL:Ljava/net/URL;
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 38
    .end local v1           #requestURL:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method
