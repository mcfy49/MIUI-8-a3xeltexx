.class Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverExitDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private mPrototype:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 1

    .prologue
    .line 2636
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2637
    const-string v0, "SendHoverExitDelayed"

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 2665
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 2666
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 2667
    return-void
.end method

.method private isPending()Z
    .locals 1

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3000(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2652
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3000(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2654
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->clear()V

    .line 2656
    :cond_0
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    .prologue
    .line 2670
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2671
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->run()V

    .line 2672
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 2674
    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "pointerIdBits"    # I
    .param p3, "policyFlags"    # I

    .prologue
    .line 2644
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 2645
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 2646
    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 2647
    iput p3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 2648
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3000(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3900(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2649
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    const/16 v2, 0xa

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$4000(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V

    .line 2683
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 2685
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 2687
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2688
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 2689
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 2691
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->clear()V

    .line 2692
    return-void
.end method
