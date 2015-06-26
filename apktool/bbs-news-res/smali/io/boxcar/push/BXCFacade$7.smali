.class final Lio/boxcar/push/BXCFacade$7;
.super Ljava/lang/Object;
.source "BXCFacade.java"

# interfaces
.implements Lio/boxcar/push/BXCCallback;


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
    .line 651
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final badgeResetFailed(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 752
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 753
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 754
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 755
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 756
    new-instance v5, Lio/boxcar/push/BXCFacade$7$9;

    invoke-direct {v5, p0, v0, p1}, Lio/boxcar/push/BXCFacade$7$9;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 762
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final badgeResetSuccess()V
    .locals 6

    .prologue
    .line 738
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 739
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 740
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 741
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 742
    new-instance v5, Lio/boxcar/push/BXCFacade$7$8;

    invoke-direct {v5, p0, v0}, Lio/boxcar/push/BXCFacade$7$8;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 748
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final getTagsFailed(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 800
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 801
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 802
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 803
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 804
    new-instance v5, Lio/boxcar/push/BXCFacade$7$2;

    invoke-direct {v5, p0, v0, p1}, Lio/boxcar/push/BXCFacade$7$2;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 810
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final getTagsSuccess(Ljava/util/List;)V
    .locals 6
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
    .line 814
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 815
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 816
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 817
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 818
    new-instance v5, Lio/boxcar/push/BXCFacade$7$3;

    invoke-direct {v5, p0, v0, p1}, Lio/boxcar/push/BXCFacade$7$3;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 824
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final notificationReceived(Lio/boxcar/push/model/BXCNotification;)V
    .locals 6
    .parameter "notification"

    .prologue
    .line 654
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 656
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 657
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 658
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 659
    new-instance v5, Lio/boxcar/push/BXCFacade$7$1;

    invoke-direct {v5, p0, v0, p1}, Lio/boxcar/push/BXCFacade$7$1;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Lio/boxcar/push/model/BXCNotification;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 665
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final registrationFailed(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 685
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 686
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Z)Z

    .line 687
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    sget-object v5, Lio/boxcar/push/BXCFacade$PushState;->unregistered:Lio/boxcar/push/BXCFacade$PushState;

    invoke-static {v3, v5}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Lio/boxcar/push/BXCFacade$PushState;)Lio/boxcar/push/BXCFacade$PushState;

    .line 688
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 689
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 690
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 691
    new-instance v5, Lio/boxcar/push/BXCFacade$7$5;

    invoke-direct {v5, p0, v0, p1}, Lio/boxcar/push/BXCFacade$7$5;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 697
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final registrationSuccess()V
    .locals 6

    .prologue
    .line 669
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 670
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Z)Z

    .line 671
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    sget-object v5, Lio/boxcar/push/BXCFacade$PushState;->registered:Lio/boxcar/push/BXCFacade$PushState;

    invoke-static {v3, v5}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Lio/boxcar/push/BXCFacade$PushState;)Lio/boxcar/push/BXCFacade$PushState;

    .line 672
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 673
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 674
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 675
    new-instance v5, Lio/boxcar/push/BXCFacade$7$4;

    invoke-direct {v5, p0, v0}, Lio/boxcar/push/BXCFacade$7$4;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 681
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final trackNotificationFailed(Lio/boxcar/push/model/BXCNotification;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "notification"
    .parameter "t"

    .prologue
    .line 720
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 722
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v5, v6}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;I)V

    .line 725
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 726
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 727
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 728
    new-instance v5, Lio/boxcar/push/BXCFacade$7$7;

    invoke-direct {v5, p0, v0, p1, p2}, Lio/boxcar/push/BXCFacade$7$7;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Lio/boxcar/push/model/BXCNotification;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 734
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final trackNotificationSuccess(Lio/boxcar/push/model/BXCNotification;)V
    .locals 7
    .parameter "notification"

    .prologue
    .line 701
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 703
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v3, v5, v6}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;I)V

    .line 706
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 707
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 708
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 709
    new-instance v5, Lio/boxcar/push/BXCFacade$7$6;

    invoke-direct {v5, p0, v0, p1}, Lio/boxcar/push/BXCFacade$7$6;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Lio/boxcar/push/model/BXCNotification;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 715
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final unregisterFailed(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 782
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 785
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Z)Z

    .line 786
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    sget-object v5, Lio/boxcar/push/BXCFacade$PushState;->unregistered:Lio/boxcar/push/BXCFacade$PushState;

    invoke-static {v3, v5}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Lio/boxcar/push/BXCFacade$PushState;)Lio/boxcar/push/BXCFacade$PushState;

    .line 787
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 788
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 789
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 790
    new-instance v5, Lio/boxcar/push/BXCFacade$7$11;

    invoke-direct {v5, p0, v0, p1}, Lio/boxcar/push/BXCFacade$7$11;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 796
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final unregisterSuccess()V
    .locals 6

    .prologue
    .line 766
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 767
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Z)Z

    .line 768
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    sget-object v5, Lio/boxcar/push/BXCFacade$PushState;->unregistered:Lio/boxcar/push/BXCFacade$PushState;

    invoke-static {v3, v5}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Lio/boxcar/push/BXCFacade$PushState;)Lio/boxcar/push/BXCFacade$PushState;

    .line 769
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$7;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 770
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCCallback;

    .line 771
    .local v0, callback:Lio/boxcar/push/BXCCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 772
    new-instance v5, Lio/boxcar/push/BXCFacade$7$10;

    invoke-direct {v5, p0, v0}, Lio/boxcar/push/BXCFacade$7$10;-><init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 778
    .end local v0           #callback:Lio/boxcar/push/BXCCallback;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lio/boxcar/push/BXCCallback;Landroid/os/Handler;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
