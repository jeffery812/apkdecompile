.class Lbbc/mobile/news/view/AbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lbbc/mobile/news/view/AbsSpinner;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/AbsSpinner;)V
    .locals 1
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->this$0:Lbbc/mobile/news/view/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const-string v0, "RecycleBin"

    iput-object v0, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->TAG:Ljava/lang/String;

    .line 436
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public add(ILandroid/view/View;)V
    .locals 2
    .parameter "position"
    .parameter "v"

    .prologue
    .line 443
    iget-object v0, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    iget-object v1, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    return-void
.end method

.method clear()V
    .locals 6

    .prologue
    .line 474
    const-string v4, "RecycleBin"

    const-string v5, "Recycler cleared... "

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 478
    .local v2, scrapHeap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 479
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 486
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 487
    return-void

    .line 480
    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 481
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 482
    iget-object v4, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->this$0:Lbbc/mobile/news/view/AbsSpinner;

    const/4 v5, 0x1

    #calls: Lbbc/mobile/news/view/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Lbbc/mobile/news/view/AbsSpinner;->access$2(Lbbc/mobile/news/view/AbsSpinner;Landroid/view/View;Z)V

    .line 479
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public get()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 447
    iget-object v2, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    const/4 v1, 0x0

    .line 455
    :cond_0
    :goto_0
    return-object v1

    .line 449
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 450
    .local v1, result:Landroid/view/View;
    iget-object v2, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 452
    .local v0, key:I
    if-eqz v1, :cond_0

    .line 453
    iget-object v2, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method get(I)Landroid/view/View;
    .locals 3
    .parameter "position"

    .prologue
    .line 459
    iget-object v1, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 460
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 461
    iget-object v1, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 465
    :goto_0
    return-object v0

    .line 463
    :cond_0
    const-string v1, "RecycleBin"

    const-string v2, "Miss"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method peek(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 469
    iget-object v0, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "v"

    .prologue
    .line 439
    iget-object v0, p0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    return-void
.end method
