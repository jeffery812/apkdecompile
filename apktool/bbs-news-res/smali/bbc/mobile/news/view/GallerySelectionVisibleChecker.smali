.class public Lbbc/mobile/news/view/GallerySelectionVisibleChecker;
.super Ljava/lang/Object;
.source "GallerySelectionVisibleChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private adapterExtension:Lbbc/mobile/news/adapter/AdapterSelectionExtension;

.field private gallery:Lbbc/mobile/news/view/AbsSpinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbbc/mobile/news/view/AbsSpinner;Lbbc/mobile/news/adapter/AdapterSelectionExtension;)V
    .locals 0
    .parameter "gallery"
    .parameter "adapterExtension"

    .prologue
    .line 14
    .local p0, this:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;,"Lbbc/mobile/news/view/GallerySelectionVisibleChecker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->gallery:Lbbc/mobile/news/view/AbsSpinner;

    .line 16
    iput-object p2, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->adapterExtension:Lbbc/mobile/news/adapter/AdapterSelectionExtension;

    .line 17
    return-void
.end method


# virtual methods
.method public checkSelectionVisible(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;,"Lbbc/mobile/news/view/GallerySelectionVisibleChecker<TT;>;"
    .local p1, newSelection:Ljava/lang/Object;,"TT;"
    .local p2, prevSelection:Ljava/lang/Object;,"TT;"
    const/4 v5, 0x0

    .line 27
    .local v5, selectionVisible:Z
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->adapterExtension:Lbbc/mobile/news/adapter/AdapterSelectionExtension;

    invoke-interface {v8, p1}, Lbbc/mobile/news/adapter/AdapterSelectionExtension;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    .line 28
    .local v2, newPos:I
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->adapterExtension:Lbbc/mobile/news/adapter/AdapterSelectionExtension;

    invoke-interface {v8, p2}, Lbbc/mobile/news/adapter/AdapterSelectionExtension;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 30
    .local v4, prevPos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->gallery:Lbbc/mobile/news/view/AbsSpinner;

    invoke-virtual {v8}, Lbbc/mobile/news/view/AbsSpinner;->getChildCount()I

    move-result v8

    if-lt v0, v8, :cond_1

    .line 43
    if-nez v5, :cond_0

    .line 46
    if-gt v2, v4, :cond_3

    .line 47
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->gallery:Lbbc/mobile/news/view/AbsSpinner;

    invoke-virtual {v8, v2}, Lbbc/mobile/news/view/AbsSpinner;->setSelection(I)V

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 31
    :cond_1
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->gallery:Lbbc/mobile/news/view/AbsSpinner;

    invoke-virtual {v8, v0}, Lbbc/mobile/news/view/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 32
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->adapterExtension:Lbbc/mobile/news/adapter/AdapterSelectionExtension;

    invoke-interface {v8, v6}, Lbbc/mobile/news/adapter/AdapterSelectionExtension;->getViewPosition(Landroid/view/View;)I

    move-result v1

    .line 34
    .local v1, itemPos:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    if-ne v1, v2, :cond_2

    .line 35
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->gallery:Lbbc/mobile/news/view/AbsSpinner;

    invoke-virtual {v8}, Lbbc/mobile/news/view/AbsSpinner;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v0, v8, :cond_2

    .line 38
    const/4 v5, 0x1

    .line 30
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v1           #itemPos:I
    .end local v6           #view:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->gallery:Lbbc/mobile/news/view/AbsSpinner;

    invoke-virtual {v8}, Lbbc/mobile/news/view/AbsSpinner;->getChildCount()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 51
    .local v7, visCount:I
    if-gez v7, :cond_4

    .line 52
    const/4 v7, 0x0

    .line 54
    :cond_4
    sub-int v8, v2, v7

    add-int/lit8 v3, v8, 0x1

    .line 56
    .local v3, offs:I
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->gallery:Lbbc/mobile/news/view/AbsSpinner;

    invoke-virtual {v8}, Lbbc/mobile/news/view/AbsSpinner;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v3, v8, :cond_5

    .line 58
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->gallery:Lbbc/mobile/news/view/AbsSpinner;

    invoke-virtual {v8}, Lbbc/mobile/news/view/AbsSpinner;->getCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 63
    :cond_5
    iget-object v8, p0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->gallery:Lbbc/mobile/news/view/AbsSpinner;

    invoke-virtual {v8, v3}, Lbbc/mobile/news/view/AbsSpinner;->setSelection(I)V

    goto :goto_1
.end method
