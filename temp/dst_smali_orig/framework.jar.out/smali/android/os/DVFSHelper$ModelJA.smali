.class Landroid/os/DVFSHelper$ModelJA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 3

    .prologue
    const v2, 0x13d620

    const/16 v1, 0x10a

    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    const/16 v0, 0xc8

    iput v0, p0, Landroid/os/DVFSHelper$ModelJA;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    iput v2, p0, Landroid/os/DVFSHelper$ModelJA;->GALLERY_TOUCH_ARM_FREQ:I

    iput v2, p0, Landroid/os/DVFSHelper$ModelJA;->LAUNCHER_TOUCH_ARM_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelJA;->LAUNCHER_TOUCH_GPU_FREQ:I

    const v0, 0x927c0

    iput v0, p0, Landroid/os/DVFSHelper$ModelJA;->GROUP_PLAY_ARM_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelJA;->AMS_RESUME_GPU_FREQ:I

    return-void
.end method
