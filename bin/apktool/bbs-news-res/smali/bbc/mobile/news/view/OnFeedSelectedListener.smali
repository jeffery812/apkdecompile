.class public Lbbc/mobile/news/view/OnFeedSelectedListener;
.super Ljava/lang/Object;
.source "OnFeedSelectedListener.java"


# instance fields
.field private mCheckables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedObject:Lbbc/mobile/news/model/Feed;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/view/OnFeedSelectedListener;->mCheckables:Ljava/util/ArrayList;

    .line 8
    return-void
.end method


# virtual methods
.method public getSelectedFeed()Lbbc/mobile/news/model/Feed;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbbc/mobile/news/view/OnFeedSelectedListener;->mSelectedObject:Lbbc/mobile/news/model/Feed;

    return-object v0
.end method

.method public onChecked(Landroid/widget/Checkable;)V
    .locals 3
    .parameter "checkedView"

    .prologue
    .line 27
    iget-object v1, p0, Lbbc/mobile/news/view/OnFeedSelectedListener;->mCheckables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 33
    return-void

    .line 27
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 29
    .local v0, checkView:Landroid/widget/Checkable;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method public registerCheckable(Landroid/widget/Checkable;)V
    .locals 1
    .parameter "checkable"

    .prologue
    .line 22
    iget-object v0, p0, Lbbc/mobile/news/view/OnFeedSelectedListener;->mCheckables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public setSelectedFeed(Lbbc/mobile/news/model/Feed;)V
    .locals 0
    .parameter "selectedObject"

    .prologue
    .line 14
    iput-object p1, p0, Lbbc/mobile/news/view/OnFeedSelectedListener;->mSelectedObject:Lbbc/mobile/news/model/Feed;

    .line 15
    return-void
.end method
