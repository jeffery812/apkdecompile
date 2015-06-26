.class public Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ServiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/ServiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CBDialogFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/ServiceFragment;


# direct methods
.method public constructor <init>(Lse/clearchannel/citybikes/ServiceFragment;I)V
    .locals 2
    .parameter
    .parameter "id"

    .prologue
    .line 656
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    .line 657
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 658
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 659
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    invoke-virtual {p0, v0}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 662
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 667
    .local v1, id:I
    if-nez v1, :cond_1

    .line 668
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b004f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x7f05

    new-instance v5, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$1;

    invoke-direct {v5, p0}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$1;-><init>(Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;)V

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lse/clearchannel/citybikes/ServiceFragment$DialogButtonClickHandler;

    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {v4, v5}, Lse/clearchannel/citybikes/ServiceFragment$DialogButtonClickHandler;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 699
    :cond_0
    :goto_0
    return-object v2

    .line 688
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0050

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 691
    const v2, 0x7f050001

    new-instance v3, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$2;

    invoke-direct {v3, p0}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$2;-><init>(Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 697
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 704
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 705
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 706
    .local v2, id:I
    if-nez v2, :cond_0

    .line 707
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 708
    .local v0, dialog:Landroid/app/Dialog;
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 709
    .local v3, lv:Landroid/widget/ListView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    iget-object v4, v4, Lse/clearchannel/citybikes/ServiceFragment;->checkedItems:[Z

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 710
    iget-object v4, p0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    iget-object v4, v4, Lse/clearchannel/citybikes/ServiceFragment;->checkedItems:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    .end local v1           #i:I
    .end local v3           #lv:Landroid/widget/ListView;
    :cond_0
    return-void
.end method
