.class Lcom/android/phone/EmergencyActionGroup$3;
.super Ljava/lang/Object;
.source "EmergencyActionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyActionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyActionGroup;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyActionGroup;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/phone/EmergencyActionGroup$3;->this$0:Lcom/android/phone/EmergencyActionGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup$3;->this$0:Lcom/android/phone/EmergencyActionGroup;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyActionGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup$3;->this$0:Lcom/android/phone/EmergencyActionGroup;

    # invokes: Lcom/android/phone/EmergencyActionGroup;->hideTheButton()V
    invoke-static {v0}, Lcom/android/phone/EmergencyActionGroup;->access$300(Lcom/android/phone/EmergencyActionGroup;)V

    goto :goto_0
.end method