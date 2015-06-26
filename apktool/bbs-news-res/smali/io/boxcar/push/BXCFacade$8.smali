.class final Lio/boxcar/push/BXCFacade$8;
.super Ljava/lang/Object;
.source "BXCFacade.java"

# interfaces
.implements Lio/boxcar/push/rest/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/BXCFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/BXCFacade;


# direct methods
.method constructor <init>(Lio/boxcar/push/BXCFacade;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/boxcar/push/BXCCallback;->badgeResetSuccess()V

    .line 866
    return-void
.end method

.method public final a(Lio/boxcar/push/model/BXCRegistration;)V
    .locals 2
    .parameter "p1Registration"

    .prologue
    .line 834
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/util/Date;)V

    .line 835
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    iget-object v1, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->j(Lio/boxcar/push/BXCFacade;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/util/List;)V
    :try_end_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :goto_0
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/boxcar/push/BXCCallback;->registrationSuccess()V

    .line 840
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lio/boxcar/push/model/BXCRegistration;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "p1Registration"
    .parameter "t"

    .prologue
    .line 845
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/boxcar/push/BXCCallback;->registrationFailed(Ljava/lang/Throwable;)V

    .line 846
    return-void
.end method

.method public final a(Lio/boxcar/push/model/BXCTrackNotification;)V
    .locals 2
    .parameter "p1TrackNotification"

    .prologue
    .line 851
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCTrackNotification;->getTarget()Lio/boxcar/push/model/BXCNotification;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/boxcar/push/BXCCallback;->trackNotificationSuccess(Lio/boxcar/push/model/BXCNotification;)V

    .line 853
    return-void
.end method

.method public final a(Lio/boxcar/push/model/BXCTrackNotification;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "p1TrackNotification"
    .parameter "t"

    .prologue
    .line 859
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCTrackNotification;->getTarget()Lio/boxcar/push/model/BXCNotification;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lio/boxcar/push/BXCCallback;->trackNotificationFailed(Lio/boxcar/push/model/BXCNotification;Ljava/lang/Throwable;)V

    .line 861
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 870
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/boxcar/push/BXCCallback;->badgeResetFailed(Ljava/lang/Throwable;)V

    .line 871
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
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
    .line 875
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/boxcar/push/BXCCallback;->getTagsSuccess(Ljava/util/List;)V

    .line 876
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/boxcar/push/BXCCallback;->unregisterSuccess()V

    .line 886
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 880
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/boxcar/push/BXCCallback;->getTagsFailed(Ljava/lang/Throwable;)V

    .line 881
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 895
    invoke-static {}, Lio/boxcar/push/BXCFacade;->b()Lio/boxcar/push/BXCFacade;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Z)Z

    .line 898
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/util/Date;)V
    :try_end_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 890
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/boxcar/push/BXCCallback;->unregisterFailed(Ljava/lang/Throwable;)V

    .line 891
    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 907
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->c(Lio/boxcar/push/BXCFacade;)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, token:Ljava/lang/String;
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Z)Z

    .line 910
    if-eqz v0, :cond_0

    .line 911
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;)V

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, p0, Lio/boxcar/push/BXCFacade$8;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v2}, Lio/boxcar/push/BXCFacade;->k(Lio/boxcar/push/BXCFacade;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Landroid/content/Context;)V

    goto :goto_0
.end method
