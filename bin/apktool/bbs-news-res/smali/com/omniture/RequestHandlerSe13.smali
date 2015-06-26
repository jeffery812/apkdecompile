.class public Lcom/omniture/RequestHandlerSe13;
.super Lcom/omniture/RequestHandler;
.source "RequestHandlerSe13.java"


# instance fields
.field java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

.field java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 20
    invoke-direct {p0}, Lcom/omniture/RequestHandler;-><init>()V

    .line 17
    iput-object v6, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

    .line 18
    iput-object v6, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;

    .line 23
    :try_start_0
    const-string v1, "HttpURLConnection"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setConnectTimeout"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    :try_start_1
    const-string v1, "HttpURLConnection"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setReadTimeout"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    :goto_1
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, e:Ljava/lang/Exception;
    iput-object v6, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 29
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 30
    .restart local v0       #e:Ljava/lang/Exception;
    iput-object v6, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;

    goto :goto_1
.end method


# virtual methods
.method protected requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .parameter "url"

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, requestURL:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0           #requestURL:Ljava/net/URL;
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v1

    .line 101
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 10
    .parameter "url"
    .parameter "headers"

    .prologue
    const/4 v3, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v3

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 51
    .local v3, requestSent:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/omniture/RequestHandlerSe13;->requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_5

    .line 55
    iget-object v5, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    .line 56
    iget-object v5, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x1388

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_2
    iget-object v5, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3

    .line 59
    iget-object v5, p0, Lcom/omniture/RequestHandlerSe13;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x1388

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_3
    if-eqz p2, :cond_6

    .line 63
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 66
    .local v2, keys:Ljava/util/Enumeration;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 67
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 78
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Enumeration;
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 83
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v5

    goto :goto_0

    .line 75
    :cond_6
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    const/4 v3, 0x1

    goto :goto_2
.end method
