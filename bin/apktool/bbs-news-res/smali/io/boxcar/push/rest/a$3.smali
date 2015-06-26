.class final Lio/boxcar/push/rest/a$3;
.super Ljava/lang/Object;
.source "BXCRESTServiceProxy.java"

# interfaces
.implements Lio/boxcar/push/rest/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/rest/a;->a(Landroid/content/Context;Lio/boxcar/push/model/BXCTrackNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/model/BXCTrackNotification;

.field final synthetic b:Lio/boxcar/push/rest/a;


# direct methods
.method constructor <init>(Lio/boxcar/push/rest/a;Lio/boxcar/push/model/BXCTrackNotification;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lio/boxcar/push/rest/a$3;->b:Lio/boxcar/push/rest/a;

    iput-object p2, p0, Lio/boxcar/push/rest/a$3;->a:Lio/boxcar/push/model/BXCTrackNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lio/boxcar/push/rest/a$3;->b:Lio/boxcar/push/rest/a;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/rest/a$3;->b:Lio/boxcar/push/rest/a;

    .line 200
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lio/boxcar/push/rest/a$3;->b:Lio/boxcar/push/rest/a;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/rest/a$3;->b:Lio/boxcar/push/rest/a;

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
