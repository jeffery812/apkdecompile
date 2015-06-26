.class public final Lcom/adobe/adms/measurement/ADMS_RequestHandler;
.super Ljava/lang/Object;
.source "ADMS_RequestHandler.java"


# instance fields
.field java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

.field java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v6, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

    .line 21
    iput-object v6, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;

    .line 26
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

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
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

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    :goto_1
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    iput-object v6, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 32
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 33
    .restart local v0       #e:Ljava/lang/Exception;
    iput-object v6, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;

    goto :goto_1
.end method

.method private exceptionIsValid(Ljava/lang/Exception;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 142
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    instance-of v1, p1, Ljava/net/MalformedURLException;

    if-nez v1, :cond_0

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter "url"

    .prologue
    .line 121
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, requestURL:Ljava/net/URL;
    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 123
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 124
    .local v0, connectionSecure:Ljavax/net/ssl/HttpsURLConnection;
    new-instance v3, Lcom/adobe/adms/measurement/ADMS_RequestHandler$1;

    invoke-direct {v3, p0}, Lcom/adobe/adms/measurement/ADMS_RequestHandler$1;-><init>(Lcom/adobe/adms/measurement/ADMS_RequestHandler;)V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 138
    .end local v0           #connectionSecure:Ljavax/net/ssl/HttpsURLConnection;
    .end local v2           #requestURL:Ljava/net/URL;
    :goto_0
    return-object v0

    .line 131
    .restart local v2       #requestURL:Ljava/net/URL;
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 133
    .end local v2           #requestURL:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 135
    invoke-static {v1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 11
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 50
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v4

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 59
    .local v4, requestSent:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_6

    .line 64
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_2

    .line 65
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setConnectTimeout:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    const/16 v10, 0x1388

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_3

    .line 68
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->java15_HttpURLConnection_setReadTimeout:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    const/16 v10, 0x1388

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    if-eqz p2, :cond_5

    .line 72
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 75
    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 76
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 78
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 79
    invoke-virtual {v0, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 91
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->exceptionIsValid(Ljava/lang/Exception;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 93
    const/4 v4, 0x1

    goto :goto_0

    .line 83
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :cond_5
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request Sent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 85
    const/4 v4, 0x1

    .line 88
    :cond_6
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->exceptionIsValid(Ljava/lang/Exception;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 100
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 95
    .local v1, e:Ljava/lang/IllegalAccessException;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalAccessException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 96
    invoke-static {v1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 102
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InvocationTargetException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 103
    invoke-static {v1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 105
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 106
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->exceptionIsValid(Ljava/lang/Exception;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 107
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 109
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 110
    invoke-static {v1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
