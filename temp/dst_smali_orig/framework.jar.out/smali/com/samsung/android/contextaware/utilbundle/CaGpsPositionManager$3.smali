.class Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;
    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->access$500(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method
