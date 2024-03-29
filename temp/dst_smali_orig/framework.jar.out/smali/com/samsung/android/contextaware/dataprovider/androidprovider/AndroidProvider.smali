.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.super Lcom/samsung/android/contextaware/dataprovider/DataProvider;
.source "AndroidProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method protected final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public updateAPStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->setAPStatus(I)V

    return-void
.end method
