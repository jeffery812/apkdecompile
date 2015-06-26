.class public Lbbc/mobile/news/dialog/ShareListDialog;
.super Landroid/app/AlertDialog;
.source "ShareListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mArrayAdapter:Lbbc/mobile/news/adapter/ShareAdapter;

.field private mHideText:Ljava/lang/CharSequence;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field mOnItemListener:Landroid/view/View$OnClickListener;

.field mOnToggleListener:Landroid/view/View$OnClickListener;

.field private mShowHideToggle:Landroid/view/View$OnClickListener;

.field private mShowText:Ljava/lang/CharSequence;

.field private mShowingAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbbc/mobile/news/dialog/ShareListDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/dialog/ShareListDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lbbc/mobile/news/dialog/ShareListDialog$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/dialog/ShareListDialog$1;-><init>(Lbbc/mobile/news/dialog/ShareListDialog;)V

    iput-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mShowHideToggle:Landroid/view/View$OnClickListener;

    .line 87
    new-instance v0, Lbbc/mobile/news/dialog/ShareListDialog$2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/dialog/ShareListDialog$2;-><init>(Lbbc/mobile/news/dialog/ShareListDialog;)V

    iput-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 36
    new-instance v0, Lbbc/mobile/news/adapter/ShareAdapter;

    invoke-direct {v0}, Lbbc/mobile/news/adapter/ShareAdapter;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mArrayAdapter:Lbbc/mobile/news/adapter/ShareAdapter;

    .line 37
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/ShareListDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    sget v1, Lbbc/mobile/news/R$layout;->report_sharelist_dialog_layout:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 37
    iput-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mListView:Landroid/widget/ListView;

    .line 39
    iget-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mArrayAdapter:Lbbc/mobile/news/adapter/ShareAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    iget-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/ShareListDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$string;->report_show_all:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mShowText:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/ShareListDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$string;->report_hide_all:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mHideText:Ljava/lang/CharSequence;

    .line 45
    sget v0, Lbbc/mobile/news/R$string;->report_send_using:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/ShareListDialog;->setTitle(I)V

    .line 46
    iget-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/ShareListDialog;->setView(Landroid/view/View;)V

    .line 47
    const/4 v0, -0x3

    iget-object v1, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mShowText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1, v3}, Lbbc/mobile/news/dialog/ShareListDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 48
    invoke-virtual {p0, p0}, Lbbc/mobile/news/dialog/ShareListDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 49
    iput-boolean v2, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mShowingAll:Z

    .line 50
    return-void
.end method


# virtual methods
.method public isShowingAllShared()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mShowingAll:Z

    return v0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 55
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/ShareListDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mShowHideToggle:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mArrayAdapter:Lbbc/mobile/news/adapter/ShareAdapter;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adapter/ShareAdapter;->setData(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 105
    iput-object p1, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mOnToggleListener:Landroid/view/View$OnClickListener;

    .line 106
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 110
    iput-object p1, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mOnItemListener:Landroid/view/View$OnClickListener;

    .line 111
    return-void
.end method

.method public setShowingAll(Z)V
    .locals 2
    .parameter "showingAll"

    .prologue
    const/4 v1, -0x3

    .line 65
    iget-boolean v0, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mShowingAll:Z

    if-eq v0, p1, :cond_0

    .line 66
    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0, v1}, Lbbc/mobile/news/dialog/ShareListDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mHideText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    iput-boolean p1, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mShowingAll:Z

    .line 74
    :cond_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0, v1}, Lbbc/mobile/news/dialog/ShareListDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/dialog/ShareListDialog;->mShowText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
