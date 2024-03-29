.class Lcom/android/internal/telephony/ServiceStateTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousSubId:I

.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->previousSubId:I

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 9

    .prologue
    .line 248
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string v8, "SubscriptionListener.onSubscriptionInfoChanged"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 250
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v6

    .line 251
    .local v6, "subId":I
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    .line 252
    .local v4, "previousSubId":I
    if-eq v4, v6, :cond_1

    .line 253
    move v4, v6

    .line 254
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 256
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    .line 257
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 264
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v7, "network_selection_name_key"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "oldNetworkSelectionName":Ljava/lang/String;
    const-string v7, "network_selection_key"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "oldNetworkSelection":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 270
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 271
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network_selection_name_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network_selection_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    const-string v7, "network_selection_name_key"

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    const-string v7, "network_selection_key"

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "oldNetworkSelection":Ljava/lang/String;
    .end local v3    # "oldNetworkSelectionName":Ljava/lang/String;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method
