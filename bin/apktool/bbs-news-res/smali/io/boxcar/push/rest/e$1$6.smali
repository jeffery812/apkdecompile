.class final Lio/boxcar/push/rest/e$1$6;
.super Ljava/lang/Object;
.source "VolleyServerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/rest/e$1;->a(Lio/boxcar/push/model/BXCTrackNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/model/BXCTrackNotification;

.field final synthetic b:Lio/boxcar/push/rest/e$1;


# direct methods
.method constructor <init>(Lio/boxcar/push/rest/e$1;Lio/boxcar/push/model/BXCTrackNotification;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lio/boxcar/push/rest/e$1$6;->b:Lio/boxcar/push/rest/e$1;

    iput-object p2, p0, Lio/boxcar/push/rest/e$1$6;->a:Lio/boxcar/push/model/BXCTrackNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lio/boxcar/push/rest/e$1$6;->b:Lio/boxcar/push/rest/e$1;

    iget-object v0, v0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v0}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;

    move-result-object v0

    iget-object v1, p0, Lio/boxcar/push/rest/e$1$6;->a:Lio/boxcar/push/model/BXCTrackNotification;

    invoke-interface {v0, v1}, Lio/boxcar/push/rest/c$a;->a(Lio/boxcar/push/model/BXCTrackNotification;)V

    .line 77
    return-void
.end method
