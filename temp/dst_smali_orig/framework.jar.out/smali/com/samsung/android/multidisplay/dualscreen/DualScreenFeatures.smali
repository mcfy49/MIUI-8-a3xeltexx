.class public Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;
.super Ljava/lang/Object;
.source "DualScreenFeatures.java"


# static fields
.field public static final DESKTOP_MODE_ENABLED:Z = false

.field public static final DUALSCREEN_ENABLED:Z = false

.field public static final DUALSCREEN_MODE_ENABLED:Z = true

.field public static SUPPORT_AUTO_EXPAND_SHRINK_VI:Z = false

.field public static SUPPORT_DESKTOP_MODE:Z = false

.field public static SUPPORT_DISPLAY_CHOOSER:Z = false

.field public static SUPPORT_DUALSCREEN_VI:Z = false

.field public static SUPPORT_DUAL_SCREENSHOT:Z = false

.field public static final SUPPORT_EXPANDED_MODE:Z = true

.field public static SUPPORT_OPPOSITE_LAUNCH:Z

.field public static SUPPORT_PINNED_HOME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DUAL_SCREENSHOT:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    sput-boolean v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_OPPOSITE_LAUNCH:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DESKTOP_MODE:Z

    sput-boolean v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DUALSCREEN_VI:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_AUTO_EXPAND_SHRINK_VI:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_PINNED_HOME:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method