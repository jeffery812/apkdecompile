.class public Lse/clearchannel/citybikes/MainActivity$PlaceholderFragment;
.super Landroid/support/v4/app/Fragment;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderFragment"
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 278
    return-void
.end method

.method public static newInstance(I)Lse/clearchannel/citybikes/MainActivity$PlaceholderFragment;
    .locals 3
    .parameter "sectionNumber"

    .prologue
    .line 270
    new-instance v1, Lse/clearchannel/citybikes/MainActivity$PlaceholderFragment;

    invoke-direct {v1}, Lse/clearchannel/citybikes/MainActivity$PlaceholderFragment;-><init>()V

    .line 271
    .local v1, fragment:Lse/clearchannel/citybikes/MainActivity$PlaceholderFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    invoke-virtual {v1, v0}, Lse/clearchannel/citybikes/MainActivity$PlaceholderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 274
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 283
    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, rootView:Landroid/view/View;
    const v2, 0x7f080048

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 285
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lse/clearchannel/citybikes/MainActivity$PlaceholderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "section_number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-object v0
.end method
