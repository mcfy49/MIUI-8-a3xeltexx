.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRegistrationStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 698
    const-string v7, "1"

    .line 699
    .local v7, "WFC_REGISTERED":Ljava/lang/String;
    const-string v6, "0"

    .line 700
    .local v6, "WFC_NOT_REGISTERED":Ljava/lang/String;
    const/4 v8, 0x0

    .line 701
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 702
    .local v10, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 705
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 707
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 711
    :cond_0
    if-eqz v8, :cond_1

    .line 712
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_1
    const-string v1, "GsmSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRegistrationStatus registration_state_state_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 718
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    .line 720
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 721
    .local v9, "updateStatus":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 722
    iput v11, v9, Landroid/os/Message;->what:I

    .line 723
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 725
    .end local v9    # "updateStatus":Landroid/os/Message;
    :cond_3
    return-void

    .line 711
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 712
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method