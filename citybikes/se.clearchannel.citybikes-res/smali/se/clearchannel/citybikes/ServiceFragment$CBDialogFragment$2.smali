.class Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$2;
.super Ljava/lang/Object;
.source "ServiceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$2;->this$1:Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 693
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$2;->this$1:Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lse/clearchannel/citybikes/ServiceFragment;->access$602(Lse/clearchannel/citybikes/ServiceFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 694
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$2;->this$1:Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->lockNumberButton:Landroid/widget/Button;
    invoke-static {v0}, Lse/clearchannel/citybikes/ServiceFragment;->access$1100(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$2;->this$1:Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;

    invoke-virtual {v2}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b0050

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment$2;->this$1:Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;

    iget-object v2, v2, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;
    invoke-static {v2}, Lse/clearchannel/citybikes/ServiceFragment;->access$600(Lse/clearchannel/citybikes/ServiceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 695
    return-void
.end method
