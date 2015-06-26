.class Lbbc/mobile/news/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/SettingsActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/SettingsActivity$1;->this$0:Lbbc/mobile/news/SettingsActivity;

    .line 168
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    invoke-static {p1}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    .line 174
    .local v0, isConnected:Z
    iget-object v1, p0, Lbbc/mobile/news/SettingsActivity$1;->this$0:Lbbc/mobile/news/SettingsActivity;

    #getter for: Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lbbc/mobile/news/SettingsActivity;->access$0(Lbbc/mobile/news/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 175
    sget v1, Lbbc/mobile/news/R$string;->pref_summary_push_notifications:I

    .line 174
    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 177
    iget-object v1, p0, Lbbc/mobile/news/SettingsActivity$1;->this$0:Lbbc/mobile/news/SettingsActivity;

    #getter for: Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lbbc/mobile/news/SettingsActivity;->access$0(Lbbc/mobile/news/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 178
    return-void

    .line 176
    :cond_0
    sget v1, Lbbc/mobile/news/R$string;->pref_summary_push_notify_nointernet:I

    goto :goto_0
.end method
