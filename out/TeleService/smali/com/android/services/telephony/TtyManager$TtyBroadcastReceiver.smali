.class final Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TtyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TtyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TtyManager;


# direct methods
.method private constructor <init>(Lcom/android/services/telephony/TtyManager;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/services/telephony/TtyManager;Lcom/android/services/telephony/TtyManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/services/telephony/TtyManager;
    .param p2, "x1"    # Lcom/android/services/telephony/TtyManager$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;-><init>(Lcom/android/services/telephony/TtyManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v4, "onReceive, action: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    const-string v3, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    const-string v3, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 114
    .local v2, "ttyMode":I
    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/services/telephony/TtyManager;

    # invokes: Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V
    invoke-static {v3, v2}, Lcom/android/services/telephony/TtyManager;->access$400(Lcom/android/services/telephony/TtyManager;I)V

    .line 120
    .end local v2    # "ttyMode":I
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v3, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const-string v3, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 118
    .local v1, "newPreferredTtyMode":I
    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/services/telephony/TtyManager;

    # invokes: Lcom/android/services/telephony/TtyManager;->updateUiTtyMode(I)V
    invoke-static {v3, v1}, Lcom/android/services/telephony/TtyManager;->access$500(Lcom/android/services/telephony/TtyManager;I)V

    goto :goto_0
.end method