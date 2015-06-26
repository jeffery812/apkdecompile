.class public Lio/boxcar/push/rest/RESTIntentService;
.super Landroid/app/IntentService;
.source "RESTIntentService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lio/boxcar/push/rest/RESTIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/boxcar/push/rest/RESTIntentService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lio/boxcar/push/rest/RESTIntentService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/boxcar/push/util/RestResponse;
    .locals 18
    .parameter "scheme"
    .parameter "host"
    .parameter "port"
    .parameter "method"
    .parameter "path"
    .parameter "payload"
    .parameter "secret"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 85
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lio/boxcar/push/rest/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, signature:Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v10, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Content-Type"

    const-string v6, "application/json"

    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v11, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "clientkey"

    move-object/from16 v0, p7

    invoke-interface {v11, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v5, "signature"

    move-object/from16 v0, v17

    invoke-interface {v11, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - payload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    .line 101
    invoke-static/range {v5 .. v12}, Lio/boxcar/push/rest/RESTIntentService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lio/boxcar/push/util/RestResponse;

    move-result-object v16

    .line 104
    .local v16, response:Lio/boxcar/push/util/RestResponse;
    invoke-virtual/range {v16 .. v16}, Lio/boxcar/push/util/RestResponse;->c()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    invoke-virtual/range {v16 .. v16}, Lio/boxcar/push/util/RestResponse;->c()I

    move-result v5

    const/16 v6, 0xcc

    if-eq v5, v6, :cond_1

    .line 107
    invoke-virtual/range {v16 .. v16}, Lio/boxcar/push/util/RestResponse;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 111
    .local v15, jsonError:Ljava/lang/String;
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    const-string v6, "error"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 120
    .local v14, errorMessage:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v5, Lio/boxcar/push/rest/b;

    invoke-direct {v5, v14}, Lio/boxcar/push/rest/b;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .end local v14           #errorMessage:Ljava/lang/String;
    .end local v15           #jsonError:Ljava/lang/String;
    .end local v16           #response:Lio/boxcar/push/util/RestResponse;
    :catch_0
    move-exception v13

    .line 126
    .local v13, e:Ljava/lang/Exception;
    new-instance v5, Lio/boxcar/push/rest/b;

    invoke-direct {v5, v13}, Lio/boxcar/push/rest/b;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 114
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v15       #jsonError:Ljava/lang/String;
    .restart local v16       #response:Lio/boxcar/push/util/RestResponse;
    :catch_1
    move-exception v5

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lio/boxcar/push/util/RestResponse;->b()Ljava/lang/String;

    move-result-object v14

    .line 115
    .restart local v14       #errorMessage:Ljava/lang/String;
    if-nez v14, :cond_0

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HTTP ERROR: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lio/boxcar/push/util/RestResponse;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v14

    goto :goto_0

    .line 123
    .end local v14           #errorMessage:Ljava/lang/String;
    .end local v15           #jsonError:Ljava/lang/String;
    :cond_1
    return-object v16
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lio/boxcar/push/util/RestResponse;
    .locals 10
    .parameter "method"
    .parameter "scheme"
    .parameter "host"
    .parameter "port"
    .parameter "resource"
    .parameter
    .parameter
    .parameter "payload"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/boxcar/push/util/RestResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    .local p5, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-lez p3, :cond_0

    .line 138
    const-string v6, "%s://%s:%s%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, uri:Ljava/lang/String;
    :goto_0
    new-instance v1, Lio/boxcar/push/util/b;

    invoke-direct {v1, v5}, Lio/boxcar/push/util/b;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, client:Lio/boxcar/push/util/a;
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lio/boxcar/push/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v1           #client:Lio/boxcar/push/util/a;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #uri:Ljava/lang/String;
    :cond_0
    const-string v6, "%s://%s%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #uri:Ljava/lang/String;
    goto :goto_0

    .line 152
    .restart local v1       #client:Lio/boxcar/push/util/a;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lio/boxcar/push/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 156
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Lio/boxcar/push/util/a;->a(Ljava/lang/String;)V

    .line 158
    sget-object v4, Lio/boxcar/push/util/a$a;->b:Lio/boxcar/push/util/a$a;

    .line 159
    .local v4, requestMethod:Lio/boxcar/push/util/a$a;
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/boxcar/push/util/a$a;->c:Lio/boxcar/push/util/a$a;

    invoke-virtual {v7}, Lio/boxcar/push/util/a$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 161
    sget-object v4, Lio/boxcar/push/util/a$a;->c:Lio/boxcar/push/util/a$a;

    .line 170
    :cond_3
    :goto_3
    invoke-virtual {v1, v4}, Lio/boxcar/push/util/a;->a(Lio/boxcar/push/util/a$a;)V

    .line 172
    invoke-virtual {v1}, Lio/boxcar/push/util/a;->a()Lio/boxcar/push/util/RestResponse;

    move-result-object v6

    return-object v6

    .line 162
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/boxcar/push/util/a$a;->d:Lio/boxcar/push/util/a$a;

    invoke-virtual {v7}, Lio/boxcar/push/util/a$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 164
    sget-object v4, Lio/boxcar/push/util/a$a;->d:Lio/boxcar/push/util/a$a;

    goto :goto_3

    .line 165
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/boxcar/push/util/a$a;->a:Lio/boxcar/push/util/a$a;

    invoke-virtual {v7}, Lio/boxcar/push/util/a$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    sget-object v4, Lio/boxcar/push/util/a$a;->a:Lio/boxcar/push/util/a$a;

    goto :goto_3
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 15
    .parameter "intent"

    .prologue
    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 51
    .local v9, extras:Landroid/os/Bundle;
    const-string v14, "scheme"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, scheme:Ljava/lang/String;
    const-string v14, "host"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, host:Ljava/lang/String;
    const-string v14, "port"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, port:I
    const-string v14, "method"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, method:Ljava/lang/String;
    const-string v14, "path"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, path:Ljava/lang/String;
    const-string v14, "payload"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, payload:Ljava/lang/String;
    const-string v14, "secret"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, secret:Ljava/lang/String;
    const-string v14, "key"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, key:Ljava/lang/String;
    const-string v14, "resultReceiver"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/os/ResultReceiver;

    .line 63
    .local v10, receiver:Landroid/os/ResultReceiver;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v12, resultData:Landroid/os/Bundle;
    :try_start_0
    invoke-static/range {v0 .. v7}, Lio/boxcar/push/rest/RESTIntentService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/boxcar/push/util/RestResponse;

    move-result-object v11

    .line 69
    .local v11, restResponse:Lio/boxcar/push/util/RestResponse;
    const-string v14, "restResponse"

    invoke-virtual {v12, v14, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Lio/boxcar/push/rest/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v13, 0x1

    .line 76
    .end local v11           #restResponse:Lio/boxcar/push/util/RestResponse;
    .local v13, resultType:I
    :goto_0
    invoke-virtual {v10, v13, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 77
    return-void

    .line 71
    .end local v13           #resultType:I
    :catch_0
    move-exception v8

    .line 72
    .local v8, e:Lio/boxcar/push/rest/b;
    const-string v14, "restException"

    invoke-virtual {v12, v14, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 73
    const/4 v13, 0x0

    .restart local v13       #resultType:I
    goto :goto_0
.end method
