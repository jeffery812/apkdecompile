.class Lse/clearchannel/citybikes/ServiceFragment$4;
.super Ljava/lang/Object;
.source "ServiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/ServiceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/ServiceFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/ServiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "view"

    .prologue
    .line 196
    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->serviceLocationSpinner:Landroid/widget/Spinner;
    invoke-static {v10}, Lse/clearchannel/citybikes/ServiceFragment;->access$200(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/widget/Spinner;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, selectedLocation:Ljava/lang/String;
    if-eqz v8, :cond_0

    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #calls: Lse/clearchannel/citybikes/ServiceFragment;->selectedItemsNotSet()Z
    invoke-static {v10}, Lse/clearchannel/citybikes/ServiceFragment;->access$300(Lse/clearchannel/citybikes/ServiceFragment;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #calls: Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumberNotSet()Z
    invoke-static {v10}, Lse/clearchannel/citybikes/ServiceFragment;->access$400(Lse/clearchannel/citybikes/ServiceFragment;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 199
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v10}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b0057

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "OK"

    new-instance v12, Lse/clearchannel/citybikes/ServiceFragment$4$1;

    invoke-direct {v12, p0}, Lse/clearchannel/citybikes/ServiceFragment$4$1;-><init>(Lse/clearchannel/citybikes/ServiceFragment$4;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 208
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 240
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v10}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v11, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    const v12, 0x7f0b0049

    invoke-virtual {v11, v12}, Lse/clearchannel/citybikes/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 212
    .local v9, sharedPref:Landroid/content/SharedPreferences;
    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    const v11, 0x7f0b004a

    invoke-virtual {v10, v11}, Lse/clearchannel/citybikes/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 213
    .local v5, lastReportTime:J
    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    const v11, 0x7f0b004b

    invoke-virtual {v10, v11}, Lse/clearchannel/citybikes/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 214
    .local v7, numberOfReports:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 217
    .local v2, currentTime:J
    const-wide/32 v10, 0x6ddd00

    sub-long v10, v2, v10

    cmp-long v10, v10, v5

    if-lez v10, :cond_2

    .line 219
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 220
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    const v11, 0x7f0b004b

    invoke-virtual {v10, v11}, Lse/clearchannel/citybikes/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    iget-object v11, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v11}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, ""

    iget-object v13, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v13}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const v14, 0x7f0b0053

    invoke-virtual {v13, v14}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v11

    iput-object v11, v10, Lse/clearchannel/citybikes/ServiceFragment;->dialog:Landroid/app/ProgressDialog;

    .line 223
    new-instance v10, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;

    iget-object v11, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {v10, v11}, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v10, v11}, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 225
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v10, 0x3

    if-ge v7, v10, :cond_3

    .line 227
    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    iget-object v11, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v11}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, ""

    iget-object v13, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v13}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const v14, 0x7f0b0053

    invoke-virtual {v13, v14}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v11

    iput-object v11, v10, Lse/clearchannel/citybikes/ServiceFragment;->dialog:Landroid/app/ProgressDialog;

    .line 228
    new-instance v10, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;

    iget-object v11, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {v10, v11}, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v10, v11}, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 232
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lse/clearchannel/citybikes/ServiceFragment$4;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v10}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b004e

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0b0056

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "OK"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
