.class public Lbbc/mobile/news/dialog/SystemDialog;
.super Ljava/lang/Object;
.source "SystemDialog.java"


# static fields
.field private static sPushClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lbbc/mobile/news/dialog/SystemDialog$1;

    invoke-direct {v0}, Lbbc/mobile/news/dialog/SystemDialog$1;-><init>()V

    sput-object v0, Lbbc/mobile/news/dialog/SystemDialog;->sPushClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showNoConnection(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 24
    sget v0, Lbbc/mobile/news/R$string;->no_connection:I

    .line 25
    sget v1, Lbbc/mobile/news/R$string;->cannot_start_no_connection:I

    const/4 v2, 0x0

    .line 24
    invoke-static {p0, v0, v1, v2}, Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;IIZ)V

    .line 26
    return-void
.end method

.method public static showNoPush(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "articleTitle"

    .prologue
    const/4 v7, 0x0

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 79
    .local v3, ssb:Landroid/text/SpannableStringBuilder;
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 81
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 82
    const/16 v6, 0x11

    .line 81
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 83
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 85
    :cond_0
    sget v4, Lbbc/mobile/news/R$string;->no_push_article_text:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 87
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 88
    sget v4, Lbbc/mobile/news/R$string;->ok:I

    new-instance v5, Lbbc/mobile/news/dialog/SystemDialog$4;

    invoke-direct {v5}, Lbbc/mobile/news/dialog/SystemDialog$4;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 97
    .local v1, dialog:Landroid/app/AlertDialog;
    const-string v4, "NoPushArticleDialog"

    const-string v5, "show()"

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v2

    .line 102
    .local v2, ex:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method

.method public static showRequestPushPerm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 110
    sget v3, Lbbc/mobile/news/R$string;->push_dialog_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 111
    sget v3, Lbbc/mobile/news/R$string;->push_permission_text:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 112
    sget v3, Lbbc/mobile/news/R$string;->yes_button_text:I

    sget-object v4, Lbbc/mobile/news/dialog/SystemDialog;->sPushClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    sget v3, Lbbc/mobile/news/R$string;->no_button_text:I

    sget-object v4, Lbbc/mobile/news/dialog/SystemDialog;->sPushClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 116
    .local v1, dialog:Landroid/app/AlertDialog;
    const-string v3, "PushDialog"

    const-string v4, "show()"

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v2

    .line 121
    .local v2, ex:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method

.method public static showStatic(Landroid/app/Activity;IIZ)V
    .locals 2
    .parameter "activity"
    .parameter "titleResId"
    .parameter "messageResId"
    .parameter "close"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 31
    return-void
.end method

.method public static showStatic(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter "activity"
    .parameter "title"
    .parameter "message"
    .parameter "close"

    .prologue
    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 40
    sget v3, Lbbc/mobile/news/R$string;->ok:I

    new-instance v4, Lbbc/mobile/news/dialog/SystemDialog$2;

    invoke-direct {v4, p3, p0}, Lbbc/mobile/news/dialog/SystemDialog$2;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    new-instance v3, Lbbc/mobile/news/dialog/SystemDialog$3;

    invoke-direct {v3, p3, p0}, Lbbc/mobile/news/dialog/SystemDialog$3;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 63
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v2

    .line 67
    .local v2, ex:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method
