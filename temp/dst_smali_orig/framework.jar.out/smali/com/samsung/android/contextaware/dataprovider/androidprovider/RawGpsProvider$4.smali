.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$4;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$4;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$4;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->unregisterGpsListener()V

    return-void
.end method