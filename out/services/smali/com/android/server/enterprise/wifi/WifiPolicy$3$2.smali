.class Lcom/android/server/enterprise/wifi/WifiPolicy$3$2;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$3;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy$3;)V
    .locals 0

    .prologue
    .line 3796
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$3$2;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3798
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$3$2;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$3;

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # invokes: Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWpsBlockedNetworks()Z
    invoke-static {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z

    .line 3799
    return-void
.end method