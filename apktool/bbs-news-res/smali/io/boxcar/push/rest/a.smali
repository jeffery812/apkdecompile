.class public final Lio/boxcar/push/rest/a;
.super Ljava/lang/Object;
.source "BXCRESTServiceProxy.java"

# interfaces
.implements Lio/boxcar/push/rest/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/boxcar/push/rest/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lio/boxcar/push/rest/c$a;


# direct methods
.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/a$a;)V
    .locals 4
    .parameter "context"
    .parameter "method"
    .parameter "path"
    .parameter "payload"
    .parameter "action"

    .prologue
    const/4 v3, 0x0

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/boxcar/push/rest/RESTIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "scheme"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "host"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "port"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v1, "secret"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v1, "key"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v1, "method"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v1, "path"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v1, "payload"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v1, "resultReceiver"

    new-instance v2, Lio/boxcar/push/rest/BXCRESTServiceProxy$7;

    invoke-static {}, Lio/boxcar/push/a/a;->d()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, p5}, Lio/boxcar/push/rest/BXCRESTServiceProxy$7;-><init>(Lio/boxcar/push/rest/a;Landroid/os/Handler;Lio/boxcar/push/rest/a$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 346
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    .line 63
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v0}, Lio/boxcar/push/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lio/boxcar/push/rest/a;->b:Lio/boxcar/push/rest/c$a;

    .line 65
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/api/device_tokens/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/boxcar/push/rest/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, path:Ljava/lang/String;
    const-string v4, ""

    .line 157
    .local v4, payload:Ljava/lang/String;
    const-string v2, "DELETE"

    new-instance v5, Lio/boxcar/push/rest/a$2;

    invoke-direct {v5, p0}, Lio/boxcar/push/rest/a$2;-><init>(Lio/boxcar/push/rest/a;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/boxcar/push/rest/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/a$a;)V

    .line 176
    return-void
.end method

.method public final a(Landroid/content/Context;Lio/boxcar/push/model/BXCRegistration;)V
    .locals 6
    .parameter "context"
    .parameter "p1Registration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/api/device_tokens/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/boxcar/push/rest/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCRegistration;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 128
    .local v4, payload:Ljava/lang/String;
    const-string v2, "PUT"

    new-instance v5, Lio/boxcar/push/rest/a$1;

    invoke-direct {v5, p0, p2}, Lio/boxcar/push/rest/a$1;-><init>(Lio/boxcar/push/rest/a;Lio/boxcar/push/model/BXCRegistration;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/boxcar/push/rest/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/a$a;)V

    .line 150
    .end local v4           #payload:Ljava/lang/String;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    monitor-enter p0

    .line 124
    monitor-exit p0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lio/boxcar/push/model/BXCTrackNotification;)V
    .locals 6
    .parameter "context"
    .parameter "p1TrackNotification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/api/receive/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/boxcar/push/rest/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lio/boxcar/push/model/BXCTrackNotification;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 192
    .local v4, payload:Ljava/lang/String;
    const-string v2, "POST"

    new-instance v5, Lio/boxcar/push/rest/a$3;

    invoke-direct {v5, p0, p2}, Lio/boxcar/push/rest/a$3;-><init>(Lio/boxcar/push/rest/a;Lio/boxcar/push/model/BXCTrackNotification;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/boxcar/push/rest/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/a$a;)V

    .line 215
    .end local v4           #payload:Ljava/lang/String;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    monitor-enter p0

    .line 188
    monitor-exit p0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 76
    iput-object p1, p0, Lio/boxcar/push/rest/a;->a:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/api/reset_badge/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/boxcar/push/rest/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, path:Ljava/lang/String;
    const-string v4, ""

    .line 222
    .local v4, payload:Ljava/lang/String;
    const-string v2, "GET"

    new-instance v5, Lio/boxcar/push/rest/a$4;

    invoke-direct {v5, p0}, Lio/boxcar/push/rest/a$4;-><init>(Lio/boxcar/push/rest/a;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/boxcar/push/rest/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/a$a;)V

    .line 242
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/api/ping/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/boxcar/push/rest/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, path:Ljava/lang/String;
    const-string v4, ""

    .line 249
    .local v4, payload:Ljava/lang/String;
    const-string v2, "GET"

    new-instance v5, Lio/boxcar/push/rest/a$5;

    invoke-direct {v5, p0}, Lio/boxcar/push/rest/a$5;-><init>(Lio/boxcar/push/rest/a;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/boxcar/push/rest/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/a$a;)V

    .line 268
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/rest/b;
        }
    .end annotation

    .prologue
    .line 272
    const-string v3, "/api/tags"

    .line 273
    .local v3, path:Ljava/lang/String;
    const-string v4, ""

    .line 275
    .local v4, payload:Ljava/lang/String;
    const-string v2, "GET"

    new-instance v5, Lio/boxcar/push/rest/a$6;

    invoke-direct {v5, p0}, Lio/boxcar/push/rest/a$6;-><init>(Lio/boxcar/push/rest/a;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/boxcar/push/rest/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/a$a;)V

    .line 314
    return-void
.end method
