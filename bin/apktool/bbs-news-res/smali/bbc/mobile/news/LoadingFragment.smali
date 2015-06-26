.class public Lbbc/mobile/news/LoadingFragment;
.super Lbbc/mobile/news/BaseFragment;
.source "LoadingFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lbbc/mobile/news/BaseFragment;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getBaseActivity()Lbbc/mobile/news/BaseActivity;
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lbbc/mobile/news/LoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 26
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lbbc/mobile/news/BaseActivity;

    if-eqz v1, :cond_0

    .line 27
    check-cast v0, Lbbc/mobile/news/BaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    return-object v0

    .line 30
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error: All activitys should inherit from BaseActivity."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isPhone()Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lbbc/mobile/news/LoadingFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->isPhone()Z

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lbbc/mobile/news/LoadingFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->isTablet()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "rootContainer"
    .parameter "savedInstanceState"

    .prologue
    .line 18
    sget v0, Lbbc/mobile/news/R$layout;->loading_fragment_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
