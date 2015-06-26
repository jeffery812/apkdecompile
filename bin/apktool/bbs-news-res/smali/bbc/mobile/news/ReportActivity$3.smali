.class Lbbc/mobile/news/ReportActivity$3;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/ReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/ReportActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->reportDialogVideoButton:I

    if-ne v0, v1, :cond_1

    .line 618
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    iget-object v1, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;
    invoke-static {v1}, Lbbc/mobile/news/ReportActivity;->access$4(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ReportDialog;

    move-result-object v1

    #calls: Lbbc/mobile/news/ReportActivity;->showReportDialog(Landroid/app/Dialog;Z)V
    invoke-static {v0, v1, v2}, Lbbc/mobile/news/ReportActivity;->access$5(Lbbc/mobile/news/ReportActivity;Landroid/app/Dialog;Z)V

    .line 619
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    const-string v1, "video"

    const/4 v2, 0x3

    #calls: Lbbc/mobile/news/ReportActivity;->openChooser(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lbbc/mobile/news/ReportActivity;->access$6(Lbbc/mobile/news/ReportActivity;Ljava/lang/String;I)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->reportDialogAudioButton:I

    if-ne v0, v1, :cond_2

    .line 621
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    iget-object v1, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;
    invoke-static {v1}, Lbbc/mobile/news/ReportActivity;->access$4(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ReportDialog;

    move-result-object v1

    #calls: Lbbc/mobile/news/ReportActivity;->showReportDialog(Landroid/app/Dialog;Z)V
    invoke-static {v0, v1, v2}, Lbbc/mobile/news/ReportActivity;->access$5(Lbbc/mobile/news/ReportActivity;Landroid/app/Dialog;Z)V

    .line 622
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    const-string v1, "audio"

    const/4 v2, 0x4

    #calls: Lbbc/mobile/news/ReportActivity;->openChooser(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lbbc/mobile/news/ReportActivity;->access$6(Lbbc/mobile/news/ReportActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->reportDialogImageButton:I

    if-ne v0, v1, :cond_3

    .line 624
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    iget-object v1, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;
    invoke-static {v1}, Lbbc/mobile/news/ReportActivity;->access$4(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ReportDialog;

    move-result-object v1

    #calls: Lbbc/mobile/news/ReportActivity;->showReportDialog(Landroid/app/Dialog;Z)V
    invoke-static {v0, v1, v2}, Lbbc/mobile/news/ReportActivity;->access$5(Lbbc/mobile/news/ReportActivity;Landroid/app/Dialog;Z)V

    .line 625
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    const-string v1, "image"

    #calls: Lbbc/mobile/news/ReportActivity;->openChooser(Ljava/lang/String;I)V
    invoke-static {v0, v1, v3}, Lbbc/mobile/news/ReportActivity;->access$6(Lbbc/mobile/news/ReportActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 626
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->reportDialogClearAttachement:I

    if-ne v0, v1, :cond_4

    .line 627
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    iget-object v1, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;
    invoke-static {v1}, Lbbc/mobile/news/ReportActivity;->access$4(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ReportDialog;

    move-result-object v1

    #calls: Lbbc/mobile/news/ReportActivity;->showReportDialog(Landroid/app/Dialog;Z)V
    invoke-static {v0, v1, v2}, Lbbc/mobile/news/ReportActivity;->access$5(Lbbc/mobile/news/ReportActivity;Landroid/app/Dialog;Z)V

    .line 628
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    #calls: Lbbc/mobile/news/ReportActivity;->clearAttachment()V
    invoke-static {v0}, Lbbc/mobile/news/ReportActivity;->access$7(Lbbc/mobile/news/ReportActivity;)V

    goto :goto_0

    .line 629
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->reportSendDialogEmail:I

    if-ne v0, v1, :cond_5

    .line 630
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    const/4 v1, 0x1

    #calls: Lbbc/mobile/news/ReportActivity;->setSendMethod(I)V
    invoke-static {v0, v1}, Lbbc/mobile/news/ReportActivity;->access$8(Lbbc/mobile/news/ReportActivity;I)V

    goto :goto_0

    .line 631
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->reportSendDialogText:I

    if-ne v0, v1, :cond_6

    .line 632
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    #calls: Lbbc/mobile/news/ReportActivity;->setSendMethod(I)V
    invoke-static {v0, v3}, Lbbc/mobile/news/ReportActivity;->access$8(Lbbc/mobile/news/ReportActivity;I)V

    goto :goto_0

    .line 633
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->reportSendButton:I

    if-ne v0, v1, :cond_7

    .line 634
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    iget-object v1, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mReportDialog:Lbbc/mobile/news/dialog/ReportDialog;
    invoke-static {v1}, Lbbc/mobile/news/ReportActivity;->access$4(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ReportDialog;

    move-result-object v1

    #calls: Lbbc/mobile/news/ReportActivity;->showReportDialog(Landroid/app/Dialog;Z)V
    invoke-static {v0, v1, v2}, Lbbc/mobile/news/ReportActivity;->access$5(Lbbc/mobile/news/ReportActivity;Landroid/app/Dialog;Z)V

    .line 635
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    const/4 v1, 0x0

    #calls: Lbbc/mobile/news/ReportActivity;->sendMessage(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lbbc/mobile/news/ReportActivity;->access$1(Lbbc/mobile/news/ReportActivity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 636
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->reportTermsOfServiceLink:I

    if-ne v0, v1, :cond_8

    .line 637
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    invoke-virtual {v0}, Lbbc/mobile/news/ReportActivity;->startTermsAndConditionsActivity()V

    goto/16 :goto_0

    .line 638
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->reportFeedbackLink:I

    if-ne v0, v1, :cond_0

    .line 639
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$3;->this$0:Lbbc/mobile/news/ReportActivity;

    #calls: Lbbc/mobile/news/ReportActivity;->startFeedbackEmail()V
    invoke-static {v0}, Lbbc/mobile/news/ReportActivity;->access$9(Lbbc/mobile/news/ReportActivity;)V

    goto/16 :goto_0
.end method
