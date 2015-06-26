.class final Lio/boxcar/push/rest/e$1;
.super Ljava/lang/Object;
.source "VolleyServerProxy.java"

# interfaces
.implements Lio/boxcar/push/rest/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/rest/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/rest/e;


# direct methods
.method constructor <init>(Lio/boxcar/push/rest/e;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 107
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$8;

    invoke-direct {v3, p0}, Lio/boxcar/push/rest/e$1$8;-><init>(Lio/boxcar/push/rest/e$1;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 119
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Lio/boxcar/push/model/BXCRegistration;)V
    .locals 4
    .parameter "p1Registration"

    .prologue
    .line 34
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 35
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$1;

    invoke-direct {v3, p0, p1}, Lio/boxcar/push/rest/e$1$1;-><init>(Lio/boxcar/push/rest/e$1;Lio/boxcar/push/model/BXCRegistration;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 47
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Lio/boxcar/push/model/BXCRegistration;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "p1Registration"
    .parameter "t"

    .prologue
    .line 52
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$5;

    invoke-direct {v3, p0, p1, p2}, Lio/boxcar/push/rest/e$1$5;-><init>(Lio/boxcar/push/rest/e$1;Lio/boxcar/push/model/BXCRegistration;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Lio/boxcar/push/model/BXCTrackNotification;)V
    .locals 4
    .parameter "p1TrackNotification"

    .prologue
    .line 70
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$6;

    invoke-direct {v3, p0, p1}, Lio/boxcar/push/rest/e$1$6;-><init>(Lio/boxcar/push/rest/e$1;Lio/boxcar/push/model/BXCTrackNotification;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Lio/boxcar/push/model/BXCTrackNotification;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "p1TrackNotification"
    .parameter "t"

    .prologue
    .line 88
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$7;

    invoke-direct {v3, p0, p1, p2}, Lio/boxcar/push/rest/e$1$7;-><init>(Lio/boxcar/push/rest/e$1;Lio/boxcar/push/model/BXCTrackNotification;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 101
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 124
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$9;

    invoke-direct {v3, p0, p1}, Lio/boxcar/push/rest/e$1$9;-><init>(Lio/boxcar/push/rest/e$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 137
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
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
    .line 142
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 143
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$10;

    invoke-direct {v3, p0, p1}, Lio/boxcar/push/rest/e$1$10;-><init>(Lio/boxcar/push/rest/e$1;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 155
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 179
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$12;

    invoke-direct {v3, p0}, Lio/boxcar/push/rest/e$1$12;-><init>(Lio/boxcar/push/rest/e$1;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 191
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 160
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 161
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$11;

    invoke-direct {v3, p0, p1}, Lio/boxcar/push/rest/e$1$11;-><init>(Lio/boxcar/push/rest/e$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 173
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 215
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$3;

    invoke-direct {v3, p0}, Lio/boxcar/push/rest/e$1$3;-><init>(Lio/boxcar/push/rest/e$1;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 227
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 196
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 197
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$2;

    invoke-direct {v3, p0, p1}, Lio/boxcar/push/rest/e$1$2;-><init>(Lio/boxcar/push/rest/e$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 209
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 232
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->a(Lio/boxcar/push/rest/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 233
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    :try_start_1
    iget-object v1, p0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v1}, Lio/boxcar/push/rest/e;->c(Lio/boxcar/push/rest/e;)Lio/boxcar/push/a/a;

    move-result-object v1

    new-instance v3, Lio/boxcar/push/rest/e$1$4;

    invoke-direct {v3, p0, p1}, Lio/boxcar/push/rest/e$1$4;-><init>(Lio/boxcar/push/rest/e$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Lio/boxcar/push/a/b;
    const-string v1, "BXCF"

    const-string v3, "Cannot deliver callback from REST response"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 245
    .end local v0           #e:Lio/boxcar/push/a/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
