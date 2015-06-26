.class Lbbc/mobile/news/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lbbc/mobile/news/SettingsActivity$4;->this$0:Lbbc/mobile/news/SettingsActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 63
    .local v0, pushEnabled:Ljava/lang/Boolean;
    invoke-static {}, Lio/boxcar/push/BXCFacade;->getState()Lio/boxcar/push/BXCFacade$PushState;

    move-result-object v1

    .line 64
    .local v1, state:Lio/boxcar/push/BXCFacade$PushState;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 66
    sget v2, Lbbc/mobile/news/R$string;->pref_summary_push_notify_registering:I

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 67
    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->registered:Lio/boxcar/push/BXCFacade$PushState;

    if-ne v1, v2, :cond_1

    .line 68
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity$4;->this$0:Lbbc/mobile/news/SettingsActivity;

    invoke-virtual {v2}, Lbbc/mobile/news/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lbbc/mobile/news/util/GlobalSettings;->setPushEnabled(Landroid/content/Context;Z)V

    .line 69
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity$4;->this$0:Lbbc/mobile/news/SettingsActivity;

    #calls: Lbbc/mobile/news/SettingsActivity;->resetPushPrefState()V
    invoke-static {v2}, Lbbc/mobile/news/SettingsActivity;->access$1(Lbbc/mobile/news/SettingsActivity;)V

    .line 88
    :cond_0
    :goto_0
    return v3

    .line 71
    :cond_1
    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->registering:Lio/boxcar/push/BXCFacade$PushState;

    if-eq v1, v2, :cond_0

    .line 72
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity$4;->this$0:Lbbc/mobile/news/SettingsActivity;

    invoke-virtual {v2}, Lbbc/mobile/news/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lbbc/mobile/app/NewsApplication;

    invoke-static {v2}, Lbbc/mobile/news/push/PushUtils;->register(Lbbc/mobile/app/NewsApplication;)V

    .line 73
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v2

    invoke-virtual {v2, v4}, Lbbc/mobile/news/stats/Stats;->logPushPermissionResponse(Z)Lbbc/mobile/news/stats/Stats;

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 78
    sget v2, Lbbc/mobile/news/R$string;->pref_summary_push_notify_unregistering:I

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 79
    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->unregistered:Lio/boxcar/push/BXCFacade$PushState;

    if-ne v1, v2, :cond_3

    .line 80
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity$4;->this$0:Lbbc/mobile/news/SettingsActivity;

    invoke-virtual {v2}, Lbbc/mobile/news/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lbbc/mobile/news/util/GlobalSettings;->setPushEnabled(Landroid/content/Context;Z)V

    .line 81
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity$4;->this$0:Lbbc/mobile/news/SettingsActivity;

    #calls: Lbbc/mobile/news/SettingsActivity;->resetPushPrefState()V
    invoke-static {v2}, Lbbc/mobile/news/SettingsActivity;->access$1(Lbbc/mobile/news/SettingsActivity;)V

    goto :goto_0

    .line 83
    :cond_3
    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->unregistering:Lio/boxcar/push/BXCFacade$PushState;

    if-eq v1, v2, :cond_0

    .line 84
    invoke-static {}, Lbbc/mobile/news/push/PushUtils;->unregister()V

    .line 85
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v2

    invoke-virtual {v2, v3}, Lbbc/mobile/news/stats/Stats;->logPushPermissionResponse(Z)Lbbc/mobile/news/stats/Stats;

    goto :goto_0
.end method
