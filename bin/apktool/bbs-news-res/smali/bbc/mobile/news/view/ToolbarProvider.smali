.class public Lbbc/mobile/news/view/ToolbarProvider;
.super Ljava/lang/Object;
.source "ToolbarProvider.java"


# static fields
.field private static final mInstance:Lbbc/mobile/news/view/ToolbarProvider;

.field private static mToolbarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbbc/mobile/news/view/ToolbarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lbbc/mobile/news/view/ToolbarProvider;

    invoke-direct {v0}, Lbbc/mobile/news/view/ToolbarProvider;-><init>()V

    sput-object v0, Lbbc/mobile/news/view/ToolbarProvider;->mInstance:Lbbc/mobile/news/view/ToolbarProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lbbc/mobile/news/view/ToolbarProvider;
    .locals 2

    .prologue
    .line 24
    const-class v0, Lbbc/mobile/news/view/ToolbarProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbbc/mobile/news/view/ToolbarProvider;->mInstance:Lbbc/mobile/news/view/ToolbarProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getToolbar()Lbbc/mobile/news/view/ToolbarView;
    .locals 1

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    sget-object v0, Lbbc/mobile/news/view/ToolbarProvider;->mToolbarRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lbbc/mobile/news/view/ToolbarProvider;->mToolbarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/ToolbarView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getToolbarRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbbc/mobile/news/view/ToolbarView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    monitor-enter p0

    :try_start_0
    sget-object v0, Lbbc/mobile/news/view/ToolbarProvider;->mToolbarRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setToolbar(Lbbc/mobile/news/view/ToolbarView;)V
    .locals 1
    .parameter "toolBar"

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbbc/mobile/news/view/ToolbarProvider;->mToolbarRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
