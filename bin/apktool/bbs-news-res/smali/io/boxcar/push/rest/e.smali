.class public final Lio/boxcar/push/rest/e;
.super Ljava/lang/Object;
.source "VolleyServerProxy.java"

# interfaces
.implements Lio/boxcar/push/rest/c;


# instance fields
.field private a:Lio/boxcar/push/rest/c$a;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lio/boxcar/push/rest/c$a;

.field private j:Lcom/android/volley/RequestQueue;

.field private k:Lio/boxcar/push/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/c$a;Landroid/content/Context;)V
    .locals 3
    .parameter "scheme"
    .parameter "host"
    .parameter "port"
    .parameter "key"
    .parameter "secret"
    .parameter "callback"
    .parameter "context"

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Lio/boxcar/push/rest/e$1;

    invoke-direct {v1, p0}, Lio/boxcar/push/rest/e$1;-><init>(Lio/boxcar/push/rest/e;)V

    iput-object v1, p0, Lio/boxcar/push/rest/e;->a:Lio/boxcar/push/rest/c$a;

    .line 249
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/boxcar/push/rest/e;->b:Ljava/lang/Object;

    .line 264
    iput-object p1, p0, Lio/boxcar/push/rest/e;->d:Ljava/lang/String;

    .line 265
    iput-object p2, p0, Lio/boxcar/push/rest/e;->e:Ljava/lang/String;

    .line 266
    iput p3, p0, Lio/boxcar/push/rest/e;->f:I

    .line 267
    iput-object p6, p0, Lio/boxcar/push/rest/e;->i:Lio/boxcar/push/rest/c$a;

    .line 268
    iput-object p4, p0, Lio/boxcar/push/rest/e;->g:Ljava/lang/String;

    .line 269
    iput-object p5, p0, Lio/boxcar/push/rest/e;->h:Ljava/lang/String;

    .line 271
    invoke-static {p7}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lio/boxcar/push/rest/e;->j:Lcom/android/volley/RequestQueue;

    .line 274
    :try_start_0
    new-instance v1, Lio/boxcar/push/a/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/boxcar/push/a/a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/boxcar/push/rest/e;->k:Lio/boxcar/push/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BXCF"

    const-string v2, "Error initializing task queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lio/boxcar/push/rest/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "resource"
    .parameter "signature"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    iget v1, p0, Lio/boxcar/push/rest/e;->f:I

    if-lez v1, :cond_0

    .line 504
    const-string v1, "%s://%s:%s%s?clientkey=%s&signature=%s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/boxcar/push/rest/e;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lio/boxcar/push/rest/e;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lio/boxcar/push/rest/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    iget-object v3, p0, Lio/boxcar/push/rest/e;->g:Ljava/lang/String;

    aput-object v3, v2, v8

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, uri:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 507
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    const-string v1, "%s://%s%s?clientkey=%s&signature=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/boxcar/push/rest/e;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lio/boxcar/push/rest/e;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    iget-object v3, p0, Lio/boxcar/push/rest/e;->g:Ljava/lang/String;

    aput-object v3, v2, v7

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uri:Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lio/boxcar/push/rest/e;->i:Lio/boxcar/push/rest/c$a;

    return-object v0
.end method

.method static synthetic c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lio/boxcar/push/rest/e;->k:Lio/boxcar/push/a/a;

    return-object v0
.end method

.method static synthetic d(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lio/boxcar/push/rest/e;->a:Lio/boxcar/push/rest/c$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lio/boxcar/push/rest/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/rest/e;->j:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    iget-object v0, p0, Lio/boxcar/push/rest/e;->k:Lio/boxcar/push/a/a;

    invoke-virtual {v0}, Lio/boxcar/push/a/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lio/boxcar/push/rest/e;->i:Lio/boxcar/push/rest/c$a;

    .line 288
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/api/device_tokens/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/boxcar/push/rest/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, path:Ljava/lang/String;
    const-string v3, "DELETE"

    iget-object v4, p0, Lio/boxcar/push/rest/e;->e:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lio/boxcar/push/rest/e;->h:Ljava/lang/String;

    invoke-static {v3, v4, v0, v5, v6}, Lio/boxcar/push/rest/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, signature:Ljava/lang/String;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v3, 0x3

    invoke-direct {p0, v0, v2}, Lio/boxcar/push/rest/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/boxcar/push/rest/e$8;

    invoke-direct {v5, p0}, Lio/boxcar/push/rest/e$8;-><init>(Lio/boxcar/push/rest/e;)V

    new-instance v6, Lio/boxcar/push/rest/e$9;

    invoke-direct {v6, p0}, Lio/boxcar/push/rest/e$9;-><init>(Lio/boxcar/push/rest/e;)V

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 383
    .local v1, request:Lcom/android/volley/Request;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleting device from Push Service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lio/boxcar/push/rest/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v3, p0, Lio/boxcar/push/rest/e;->j:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 385
    return-void
.end method

.method public final a(Landroid/content/Context;Lio/boxcar/push/model/BXCRegistration;)V
    .locals 9
    .parameter "context"
    .parameter "p1Registration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/api/device_tokens/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/boxcar/push/rest/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCRegistration;->toJSON()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 342
    .local v3, payload:Lorg/json/JSONObject;
    const-string v1, "PUT"

    iget-object v2, p0, Lio/boxcar/push/rest/e;->e:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/boxcar/push/rest/e;->h:Ljava/lang/String;

    invoke-static {v1, v2, v7, v4, v5}, Lio/boxcar/push/rest/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, signature:Ljava/lang/String;
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x2

    invoke-direct {p0, v7, v8}, Lio/boxcar/push/rest/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lio/boxcar/push/rest/e$6;

    invoke-direct {v4, p0, p2}, Lio/boxcar/push/rest/e$6;-><init>(Lio/boxcar/push/rest/e;Lio/boxcar/push/model/BXCRegistration;)V

    new-instance v5, Lio/boxcar/push/rest/e$7;

    invoke-direct {v5, p0, p2}, Lio/boxcar/push/rest/e$7;-><init>(Lio/boxcar/push/rest/e;Lio/boxcar/push/model/BXCRegistration;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 359
    .local v0, request:Lcom/android/volley/Request;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registration payload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lio/boxcar/push/rest/e;->j:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 361
    return-void

    .line 339
    .end local v0           #request:Lcom/android/volley/Request;
    .end local v3           #payload:Lorg/json/JSONObject;
    .end local v8           #signature:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 340
    .local v6, e:Lorg/json/JSONException;
    new-instance v1, Lio/boxcar/push/rest/b;

    invoke-direct {v1, v6}, Lio/boxcar/push/rest/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Landroid/content/Context;Lio/boxcar/push/model/BXCTrackNotification;)V
    .locals 9
    .parameter "context"
    .parameter "p1TrackNotification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/api/receive/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/boxcar/push/rest/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 392
    .local v7, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCTrackNotification;->toJSON()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 396
    .local v3, payload:Lorg/json/JSONObject;
    const-string v1, "POST"

    iget-object v2, p0, Lio/boxcar/push/rest/e;->e:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/boxcar/push/rest/e;->h:Ljava/lang/String;

    invoke-static {v1, v2, v7, v4, v5}, Lio/boxcar/push/rest/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, signature:Ljava/lang/String;
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    invoke-direct {p0, v7, v8}, Lio/boxcar/push/rest/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lio/boxcar/push/rest/e$10;

    invoke-direct {v4, p0, p2}, Lio/boxcar/push/rest/e$10;-><init>(Lio/boxcar/push/rest/e;Lio/boxcar/push/model/BXCTrackNotification;)V

    new-instance v5, Lio/boxcar/push/rest/e$11;

    invoke-direct {v5, p0, p2}, Lio/boxcar/push/rest/e$11;-><init>(Lio/boxcar/push/rest/e;Lio/boxcar/push/model/BXCTrackNotification;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 413
    .local v0, request:Lcom/android/volley/Request;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tracking payload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v1, p0, Lio/boxcar/push/rest/e;->j:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 415
    return-void

    .line 393
    .end local v0           #request:Lcom/android/volley/Request;
    .end local v3           #payload:Lorg/json/JSONObject;
    .end local v8           #signature:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 394
    .local v6, e:Lorg/json/JSONException;
    new-instance v1, Lio/boxcar/push/rest/b;

    invoke-direct {v1, v6}, Lio/boxcar/push/rest/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 300
    iput-object p1, p0, Lio/boxcar/push/rest/e;->c:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/api/reset_badge/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/boxcar/push/rest/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, path:Ljava/lang/String;
    const-string v3, "GET"

    iget-object v4, p0, Lio/boxcar/push/rest/e;->e:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lio/boxcar/push/rest/e;->h:Ljava/lang/String;

    invoke-static {v3, v4, v0, v5, v6}, Lio/boxcar/push/rest/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, signature:Ljava/lang/String;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2}, Lio/boxcar/push/rest/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/boxcar/push/rest/e$12;

    invoke-direct {v5, p0}, Lio/boxcar/push/rest/e$12;-><init>(Lio/boxcar/push/rest/e;)V

    new-instance v6, Lio/boxcar/push/rest/e$13;

    invoke-direct {v6, p0}, Lio/boxcar/push/rest/e$13;-><init>(Lio/boxcar/push/rest/e;)V

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 437
    .local v1, request:Lcom/android/volley/Request;
    iget-object v3, p0, Lio/boxcar/push/rest/e;->j:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 438
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/api/ping/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/boxcar/push/rest/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, path:Ljava/lang/String;
    const-string v3, "GET"

    iget-object v4, p0, Lio/boxcar/push/rest/e;->e:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lio/boxcar/push/rest/e;->h:Ljava/lang/String;

    invoke-static {v3, v4, v0, v5, v6}, Lio/boxcar/push/rest/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, signature:Ljava/lang/String;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2}, Lio/boxcar/push/rest/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/boxcar/push/rest/e$2;

    invoke-direct {v5, p0}, Lio/boxcar/push/rest/e$2;-><init>(Lio/boxcar/push/rest/e;)V

    new-instance v6, Lio/boxcar/push/rest/e$3;

    invoke-direct {v6, p0}, Lio/boxcar/push/rest/e$3;-><init>(Lio/boxcar/push/rest/e;)V

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 460
    .local v1, request:Lcom/android/volley/Request;
    iget-object v3, p0, Lio/boxcar/push/rest/e;->j:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 461
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 465
    const-string v1, "GET"

    iget-object v2, p0, Lio/boxcar/push/rest/e;->e:Ljava/lang/String;

    const-string v3, "/api/tags"

    const-string v4, ""

    iget-object v5, p0, Lio/boxcar/push/rest/e;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lio/boxcar/push/rest/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 468
    .local v6, signature:Ljava/lang/String;
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    const-string v2, "/api/tags"

    invoke-direct {p0, v2, v6}, Lio/boxcar/push/rest/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lio/boxcar/push/rest/e$4;

    invoke-direct {v4, p0}, Lio/boxcar/push/rest/e$4;-><init>(Lio/boxcar/push/rest/e;)V

    new-instance v5, Lio/boxcar/push/rest/e$5;

    invoke-direct {v5, p0}, Lio/boxcar/push/rest/e$5;-><init>(Lio/boxcar/push/rest/e;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 497
    .local v0, request:Lcom/android/volley/Request;
    iget-object v1, p0, Lio/boxcar/push/rest/e;->j:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 498
    return-void
.end method
