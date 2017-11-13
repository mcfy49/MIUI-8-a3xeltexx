.class public Lcom/android/internal/os/BatteryStatsDumper;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDumper$1;,
        Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryStatsDumper"

.field public static db:Lcom/android/internal/os/BatteryStatsDBHelper;

.field public static extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

.field static mIsOnBattery:Z

.field private static sPrevBatteryLevel:I

.field public static sScreenOn:Z


# instance fields
.field private final PRODUCT_NAME:Ljava/lang/String;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mStatsType:I

.field private mSupportDailyBatteryStats:Z

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStatsType:I

    const-string v0, "ro.product.name"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->PRODUCT_NAME:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsDumper;->mSupportDailyBatteryStats:Z

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    sget-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->PRODUCT_NAME:Ljava/lang/String;

    const-string v1, "heroqlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->PRODUCT_NAME:Ljava/lang/String;

    const-string v1, "herolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->PRODUCT_NAME:Ljava/lang/String;

    const-string v1, "hero2lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->PRODUCT_NAME:Ljava/lang/String;

    const-string v1, "hero2qlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mSupportDailyBatteryStats:Z

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsExtDBHelper;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsDumper;->extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    return-void
.end method

.method private addScreenUsage(J)D
    .locals 23
    .param p1, "rawRealtime"    # J

    .prologue
    const-wide/16 v10, 0x0

    .local v10, "power":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .local v16, "screenOnTimeMs":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v20, "screen.on"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v10, v10, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v18, "screen.full"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    .local v14, "screenFullPower":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    int-to-float v7, v6

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v7, v7, v18

    float-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    div-double v12, v18, v20

    .local v12, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v6, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .local v4, "brightnessTime":J
    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v8, v12, v18

    .local v8, "p":D
    add-double/2addr v10, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v4    # "brightnessTime":J
    .end local v8    # "p":D
    .end local v12    # "screenBinPower":D
    :cond_0
    const-wide v18, 0x414b774000000000L    # 3600000.0

    div-double v10, v10, v18

    return-wide v10
.end method

.method private getByteFromFile(Ljava/lang/String;)B
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, "s":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "ret":B
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return v3

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    .end local v4    # "s":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v3, -0x1

    .restart local v3    # "ret":B
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v5

    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getMobilePowerPerMs()D
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket(J)D
    .locals 23
    .param p1, "rawRealtime"    # J

    .prologue
    const-wide/32 v4, 0x30d40

    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v18, v0

    const-string v19, "radio.active"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .local v12, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .local v14, "mobileTx":J
    add-long v8, v12, v14

    .local v8, "mobileData":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .local v16, "radioDataUptimeMs":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .local v10, "mobilePps":D
    :goto_0
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    .end local v10    # "mobilePps":D
    :cond_0
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_0
.end method

.method private getWifiPowerPerPacket()D
    .locals 8

    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    const-wide/32 v0, 0xf4240

    .local v0, "WIFI_BPS":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private load()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":[B
    .end local v2    # "parcel":Landroid/os/Parcel;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private mapKnownUIDs(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "packageName":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "ROOT"

    goto :goto_0

    :sswitch_1
    const-string v0, "ANDROID_SYSTEM"

    goto :goto_0

    :sswitch_2
    const-string v0, "PHONE"

    goto :goto_0

    :sswitch_3
    const-string v0, "com.android.bluetooth"

    goto :goto_0

    :sswitch_4
    const-string v0, "MEDIA"

    goto :goto_0

    :sswitch_5
    const-string v0, "com.android.nfc"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3f5 -> :sswitch_4
        0x403 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public abusiveDetectionFromHCamp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "metaData"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsDBHelper;->abusiveDetectionFromHCamp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abusiveDetectionFromHCamp(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsDBHelper;->abusiveDetectionFromHCamp(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public computeSavedTimeAfterKillingPackage(Ljava/lang/String;)J
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .local v6, "consumptionRateTotal":D
    const/4 v3, 0x0

    .local v3, "dischageSteps":[J
    const/4 v8, 0x0

    .local v8, "dischageStepsNum":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v8, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .local v2, "batteryLevel":I
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: batteryLevel:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dischageStepsNum: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-gtz v8, :cond_0

    const-wide/16 v10, -0x1

    .end local v2    # "batteryLevel":I
    :goto_0
    return-wide v10

    :catchall_0
    move-exception v18

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const-string v18, "BatteryStatsDumper"

    const-string v19, "computeSavedTimeAfterKillingPackage::  Exception"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "batteryLevel":I
    :cond_0
    const-wide/16 v16, 0x0

    .local v16, "total":J
    const-wide v14, 0xffffffffffL

    .local v14, "stepLevelTimeMask":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_1

    :try_start_5
    aget-wide v18, v3, v10

    and-long v18, v18, v14

    add-long v16, v16, v18

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit16 v0, v8, 0xe10

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-double v6, v0

    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: consumptionRateTotal:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_2

    const-wide/16 v10, -0x1

    goto :goto_0

    :cond_2
    sget-object v18, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAverageLevelDropPerHour(Ljava/lang/String;)D

    move-result-wide v4

    .local v4, "consumptionRateOfPackage":D
    const-wide/16 v12, 0x0

    .local v12, "newConsumptionRateTotal":D
    cmpl-double v18, v6, v4

    if-lez v18, :cond_3

    sub-double v12, v6, v4

    :goto_2
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "New battery consumption rate = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Previous consumptionRateOfPackage: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    mul-double v20, v6, v12

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v10, v0

    .local v10, "i":J
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: returning i:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .local v10, "i":I
    :cond_3
    sub-double v12, v4, v6

    goto :goto_2
.end method

.method public deleteRecordsExceptLatest(I)V
    .locals 1
    .param p1, "maxNumOfItems"    # I

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteRecordsExceptLatest(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mSupportDailyBatteryStats:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->deleteRecordsExceptLatest(I)V

    :cond_1
    return-void
.end method

.method public deleteTableForApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteTableForApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deleteTableForUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteTableForUid(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mSupportDailyBatteryStats:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->deleteTableForUid(I)V

    :cond_1
    return-void
.end method

.method public dumpConsumingAppDetails(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpConsumingAppDetails(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getBatteryLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "battValue":I
    const/4 v1, -0x1

    .local v1, "batteryLevel":B
    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDumper;->getByteFromFile(Ljava/lang/String;)B

    move-result v1

    if-gez v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getBatteryTotalCapacity()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public handleTimeChange()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->handleTimeChange()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mSupportDailyBatteryStats:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->handleTimeChange()V

    :cond_1
    return-void
.end method

.method public modifyHealingCampThresholdIfNecessary()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->modifyHealingCampThresholdIfNecessary()V

    return-void
.end method

.method public modifyThresholdIfNecessary()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->modifyThresholdIfNecessary()V

    return-void
.end method

.method public refreshStats(ZZ)V
    .locals 126
    .param p1, "isWriteReasonScreenChange"    # Z
    .param p2, "screenOn"    # Z

    .prologue
    const-string v6, "BatteryStatsDumper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "In refreshStats isReason Screen ON/OFF: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->load()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    sput-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->mIsOnBattery:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    const-string v21, "sensor"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    :cond_0
    const/16 v111, 0x0

    .local v111, "which":I
    const-wide/16 v40, 0x0

    .local v40, "computedPower":D
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    const-wide/16 v124, 0x3e8

    mul-long v58, v22, v124

    .local v58, "mRawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDumper;->getMobilePowerPerPacket(J)D

    move-result-wide v62

    .local v62, "mobilePowerPerPacket":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->getMobilePowerPerMs()D

    move-result-wide v60

    .local v60, "mobilePowerPerMs":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->getWifiPowerPerPacket()D

    move-result-wide v114

    .local v114, "wifiPowerPerPacket":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .local v25, "time":J
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .local v27, "powerEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v104

    .local v104, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v104 .. v104}, Landroid/util/SparseArray;->size()I

    move-result v33

    .local v33, "NU":I
    const/16 v54, 0x0

    .local v54, "iu":I
    :goto_0
    move/from16 v0, v54

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    move-object/from16 v0, v104

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Landroid/os/BatteryStats$Uid;

    .local v103, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v8, 0x0

    .local v8, "power":D
    const-wide/16 v48, 0x0

    .local v48, "highestDrain":D
    const/16 v75, 0x0

    .local v75, "packageWithHighestDrain":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .local v10, "cpuTimeMs":J
    const-wide/16 v42, 0x0

    .local v42, "cpuFgTimeMs":J
    const-wide/16 v12, 0x0

    .local v12, "wakeLockTime":J
    const/16 v20, 0x0

    .local v20, "walarmCount":I
    const-wide/16 v112, 0x0

    .local v112, "walarmPower":D
    invoke-virtual/range {v103 .. v103}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v77

    .local v77, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    if-eqz v77, :cond_9

    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_9

    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .local v50, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/util/Map$Entry;

    .local v39, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/BatteryStats$Uid$Proc;

    .local v82, "ps":Landroid/os/BatteryStats$Uid$Proc;
    const/4 v6, 0x0

    move-object/from16 v0, v82

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v106

    .local v106, "userTime":J
    const/4 v6, 0x0

    move-object/from16 v0, v82

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v98

    .local v98, "systemTime":J
    const/4 v6, 0x0

    move-object/from16 v0, v82

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v46

    .local v46, "foregroundTime":J
    add-long v42, v42, v46

    add-long v100, v106, v98

    .local v100, "tmpCpuTime":J
    const/16 v102, 0x0

    .local v102, "totalTimeAtSpeeds":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v70

    .local v70, "numClusters":I
    const/16 v38, 0x0

    .local v38, "cluster":I
    :goto_2
    move/from16 v0, v38

    move/from16 v1, v70

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v96

    .local v96, "speedsForCluster":I
    const/16 v95, 0x0

    .local v95, "speed":I
    :goto_3
    move/from16 v0, v95

    move/from16 v1, v96

    if-ge v0, v1, :cond_2

    move/from16 v0, v102

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const/4 v6, 0x0

    move-object/from16 v0, v103

    move/from16 v1, v38

    move/from16 v2, v95

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v124

    add-long v22, v22, v124

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v102, v0

    add-int/lit8 v95, v95, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .end local v95    # "speed":I
    .end local v96    # "speedsForCluster":I
    :cond_3
    if-nez v102, :cond_4

    const/16 v102, 0x1

    :cond_4
    const-wide/16 v80, 0x0

    .local v80, "processPower":D
    const/16 v38, 0x0

    :goto_4
    move/from16 v0, v38

    move/from16 v1, v70

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v96

    .restart local v96    # "speedsForCluster":I
    const/16 v95, 0x0

    .restart local v95    # "speed":I
    :goto_5
    move/from16 v0, v95

    move/from16 v1, v96

    if-ge v0, v1, :cond_5

    const/4 v6, 0x0

    move-object/from16 v0, v103

    move/from16 v1, v38

    move/from16 v2, v95

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v102

    int-to-double v0, v0

    move-wide/from16 v124, v0

    div-double v84, v22, v124

    .local v84, "ratio":D
    move-wide/from16 v0, v100

    long-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v84

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move/from16 v0, v38

    move/from16 v1, v95

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpu(II)D

    move-result-wide v124

    mul-double v44, v22, v124

    .local v44, "cpuSpeedStepPower":D
    add-double v80, v80, v44

    add-int/lit8 v95, v95, 0x1

    goto :goto_5

    .end local v44    # "cpuSpeedStepPower":D
    .end local v84    # "ratio":D
    :cond_5
    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    .end local v95    # "speed":I
    .end local v96    # "speedsForCluster":I
    :cond_6
    add-long v10, v10, v100

    const-wide/16 v22, 0x0

    cmpl-double v6, v80, v22

    if-eqz v6, :cond_1

    add-double v8, v8, v80

    if-eqz v75, :cond_7

    const-string v6, "*"

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move-wide/from16 v48, v80

    invoke-interface/range {v39 .. v39}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v75

    .end local v75    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v75, Ljava/lang/String;

    .restart local v75    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_1

    :cond_8
    cmpg-double v6, v48, v80

    if-gez v6, :cond_1

    invoke-interface/range {v39 .. v39}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move-wide/from16 v48, v80

    invoke-interface/range {v39 .. v39}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v75

    .end local v75    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v75, Ljava/lang/String;

    .restart local v75    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_1

    .end local v38    # "cluster":I
    .end local v39    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v46    # "foregroundTime":J
    .end local v50    # "i$":Ljava/util/Iterator;
    .end local v70    # "numClusters":I
    .end local v80    # "processPower":D
    .end local v82    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v98    # "systemTime":J
    .end local v100    # "tmpCpuTime":J
    .end local v102    # "totalTimeAtSpeeds":I
    .end local v106    # "userTime":J
    :cond_9
    const-wide v22, 0x414b774000000000L    # 3600000.0

    div-double v8, v8, v22

    cmp-long v6, v42, v10

    if-lez v6, :cond_b

    const-wide/16 v22, 0x2710

    add-long v22, v22, v10

    cmp-long v6, v42, v22

    if-lez v6, :cond_a

    const-string v6, "BatteryStatsDumper"

    const-string v21, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-wide/from16 v10, v42

    :cond_b
    invoke-virtual/range {v103 .. v103}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v110

    .local v110, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v110 .. v110}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .restart local v50    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Ljava/util/Map$Entry;

    .local v109, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v109 .. v109}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/os/BatteryStats$Uid$Wakelock;

    .local v108, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x0

    move-object/from16 v0, v108

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v97

    .local v97, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v97, :cond_c

    const/4 v6, 0x0

    move-object/from16 v0, v97

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v22

    add-long v12, v12, v22

    goto :goto_6

    .end local v97    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v108    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v109    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_d
    const-wide/16 v22, 0x3e8

    div-long v12, v12, v22

    long-to-double v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v21, "cpu.awake"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v124

    mul-double v22, v22, v124

    const-wide v124, 0x414b774000000000L    # 3600000.0

    div-double v72, v22, v124

    .local v72, "p":D
    add-double v8, v8, v72

    const/4 v6, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v103

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v64

    .local v64, "mobileRx":J
    const/4 v6, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v103

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v66

    .local v66, "mobileTx":J
    const/4 v6, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v14

    .local v14, "mobileActive":J
    const-wide/16 v22, 0x0

    cmp-long v6, v14, v22

    if-lez v6, :cond_e

    long-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v22, v22, v60

    const-wide v124, 0x408f400000000000L    # 1000.0

    div-double v72, v22, v124

    :goto_7
    add-double v8, v8, v72

    add-long v16, v64, v66

    .local v16, "mobilePackets":J
    const/4 v6, 0x2

    const/16 v21, 0x0

    move-object/from16 v0, v103

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v118

    .local v118, "wifiRx":J
    const/4 v6, 0x3

    const/16 v21, 0x0

    move-object/from16 v0, v103

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v122

    .local v122, "wifiTx":J
    add-long v22, v118, v122

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v72, v22, v114

    add-double v8, v8, v72

    add-long v18, v118, v122

    .local v18, "wifiPackets":J
    const/4 v6, 0x0

    move-object/from16 v0, v103

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v22

    const-wide/16 v124, 0x3e8

    div-long v116, v22, v124

    .local v116, "wifiRunningTimeMs":J
    move-wide/from16 v0, v116

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v21, "wifi.on"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v124

    mul-double v22, v22, v124

    const-wide v124, 0x414b774000000000L    # 3600000.0

    div-double v72, v22, v124

    add-double v8, v8, v72

    const/4 v6, 0x0

    move-object/from16 v0, v103

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v22

    const-wide/16 v124, 0x3e8

    div-long v120, v22, v124

    .local v120, "wifiScanTimeMs":J
    move-wide/from16 v0, v120

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v21, "wifi.scan"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v124

    mul-double v22, v22, v124

    const-wide v124, 0x414b774000000000L    # 3600000.0

    div-double v72, v22, v124

    add-double v8, v8, v72

    const/16 v35, 0x0

    .local v35, "bin":I
    :goto_8
    const/4 v6, 0x5

    move/from16 v0, v35

    if-ge v0, v6, :cond_f

    const/4 v6, 0x0

    move-object/from16 v0, v103

    move/from16 v1, v35

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v22

    const-wide/16 v124, 0x3e8

    div-long v36, v22, v124

    .local v36, "batchScanTimeMs":J
    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v21, "wifi.batchedscan"

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v124

    mul-double v22, v22, v124

    const-wide v124, 0x414b774000000000L    # 3600000.0

    div-double v72, v22, v124

    add-double v8, v8, v72

    add-int/lit8 v35, v35, 0x1

    goto :goto_8

    .end local v16    # "mobilePackets":J
    .end local v18    # "wifiPackets":J
    .end local v35    # "bin":I
    .end local v36    # "batchScanTimeMs":J
    .end local v116    # "wifiRunningTimeMs":J
    .end local v118    # "wifiRx":J
    .end local v120    # "wifiScanTimeMs":J
    .end local v122    # "wifiTx":J
    :cond_e
    add-long v22, v64, v66

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v72, v22, v62

    goto/16 :goto_7

    .restart local v16    # "mobilePackets":J
    .restart local v18    # "wifiPackets":J
    .restart local v35    # "bin":I
    .restart local v116    # "wifiRunningTimeMs":J
    .restart local v118    # "wifiRx":J
    .restart local v120    # "wifiScanTimeMs":J
    .restart local v122    # "wifiTx":J
    :cond_f
    invoke-virtual/range {v103 .. v103}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v91

    .local v91, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v91 .. v91}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "NSE":I
    const/16 v53, 0x0

    .local v53, "ise":I
    :goto_9
    move/from16 v0, v53

    if-ge v0, v4, :cond_12

    move-object/from16 v0, v91

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Landroid/os/BatteryStats$Uid$Sensor;

    .local v88, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v91

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v89

    .local v89, "sensorHandle":I
    invoke-virtual/range {v88 .. v88}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v97

    .restart local v97    # "timer":Landroid/os/BatteryStats$Timer;
    const/4 v6, 0x0

    move-object/from16 v0, v97

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v22

    const-wide/16 v124, 0x3e8

    div-long v92, v22, v124

    .local v92, "sensorTime":J
    const-wide/16 v68, 0x0

    .local v68, "multiplier":D
    packed-switch v89, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v90

    .local v90, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v90 .. v90}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :cond_10
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Landroid/hardware/Sensor;

    .local v83, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v83 .. v83}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    move/from16 v0, v89

    if-ne v6, v0, :cond_10

    invoke-virtual/range {v83 .. v83}, Landroid/hardware/Sensor;->getPower()F

    move-result v6

    float-to-double v0, v6

    move-wide/from16 v68, v0

    .end local v83    # "s":Landroid/hardware/Sensor;
    .end local v90    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_11
    :goto_a
    move-wide/from16 v0, v92

    long-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v68

    const-wide v124, 0x414b774000000000L    # 3600000.0

    div-double v72, v22, v124

    add-double v8, v8, v72

    add-int/lit8 v53, v53, 0x1

    goto :goto_9

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v21, "gps.on"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v68

    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    cmpg-double v6, v68, v22

    if-gez v6, :cond_11

    const-wide v68, 0x403e19999999999aL    # 30.1

    goto :goto_a

    .end local v68    # "multiplier":D
    .end local v88    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v89    # "sensorHandle":I
    .end local v92    # "sensorTime":J
    .end local v97    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_12
    const-wide/16 v22, 0x0

    cmpg-double v6, v8, v22

    if-gez v6, :cond_13

    const-string v6, "BatteryStatsDumper"

    const-string v21, " calculated power is negative"

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    :cond_13
    invoke-virtual/range {v103 .. v103}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    .local v7, "thisUid":I
    const/16 v71, 0x0

    .local v71, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v76

    .local v76, "packages":[Ljava/lang/String;
    if-eqz v76, :cond_15

    move-object/from16 v0, v76

    array-length v6, v0

    if-lez v6, :cond_15

    const/4 v6, 0x0

    aget-object v71, v76, v6

    :goto_b
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v105

    .local v105, "userId":I
    const/16 v52, 0x0

    .local v52, "isSystem":Z
    const/16 v94, 0x0

    .local v94, "specialPackageName":Ljava/lang/String;
    const/16 v6, 0x2710

    if-ge v7, v6, :cond_14

    const/16 v52, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/os/BatteryStatsDumper;->mapKnownUIDs(I)Ljava/lang/String;

    move-result-object v94

    if-eqz v94, :cond_14

    move-object/from16 v71, v94

    :cond_14
    invoke-virtual/range {v103 .. v103}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v74

    .local v74, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v21, "wakeup.power"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v78

    .local v78, "powerPerWakeUp":D
    invoke-virtual/range {v74 .. v74}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v51, v6, -0x1

    .local v51, "ipkg":I
    :goto_c
    if-ltz v51, :cond_17

    move-object/from16 v0, v74

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/BatteryStats$Uid$Pkg;

    .local v82, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/16 v20, 0x0

    invoke-virtual/range {v82 .. v82}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v34

    .local v34, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v55, v6, -0x1

    .local v55, "iwa":I
    :goto_d
    if-ltz v55, :cond_16

    move-object/from16 v0, v34

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    add-int v20, v20, v6

    add-int/lit8 v55, v55, -0x1

    goto :goto_d

    .end local v34    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v51    # "ipkg":I
    .end local v52    # "isSystem":Z
    .end local v55    # "iwa":I
    .end local v74    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v78    # "powerPerWakeUp":D
    .end local v82    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v94    # "specialPackageName":Ljava/lang/String;
    .end local v105    # "userId":I
    :cond_15
    move-object/from16 v71, v75

    goto :goto_b

    .restart local v34    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .restart local v51    # "ipkg":I
    .restart local v52    # "isSystem":Z
    .restart local v55    # "iwa":I
    .restart local v74    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v78    # "powerPerWakeUp":D
    .restart local v82    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v94    # "specialPackageName":Ljava/lang/String;
    .restart local v105    # "userId":I
    :cond_16
    add-int/lit8 v51, v51, -0x1

    goto :goto_c

    .end local v34    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v55    # "iwa":I
    .end local v82    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    :cond_17
    mul-double v112, v112, v78

    add-double v8, v8, v112

    add-double v40, v40, v8

    if-eqz v71, :cond_18

    if-nez v105, :cond_18

    new-instance v5, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/16 v21, 0x0

    invoke-direct/range {v5 .. v21}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;IDJJJJJILcom/android/internal/os/BatteryStatsDumper$1;)V

    .local v5, "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    :cond_18
    add-int/lit8 v54, v54, 0x1

    goto/16 :goto_0

    .end local v4    # "NSE":I
    .end local v7    # "thisUid":I
    .end local v8    # "power":D
    .end local v10    # "cpuTimeMs":J
    .end local v12    # "wakeLockTime":J
    .end local v14    # "mobileActive":J
    .end local v16    # "mobilePackets":J
    .end local v18    # "wifiPackets":J
    .end local v20    # "walarmCount":I
    .end local v35    # "bin":I
    .end local v42    # "cpuFgTimeMs":J
    .end local v48    # "highestDrain":D
    .end local v50    # "i$":Ljava/util/Iterator;
    .end local v51    # "ipkg":I
    .end local v52    # "isSystem":Z
    .end local v53    # "ise":I
    .end local v64    # "mobileRx":J
    .end local v66    # "mobileTx":J
    .end local v71    # "packageName":Ljava/lang/String;
    .end local v72    # "p":D
    .end local v74    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v75    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v76    # "packages":[Ljava/lang/String;
    .end local v77    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v78    # "powerPerWakeUp":D
    .end local v91    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v94    # "specialPackageName":Ljava/lang/String;
    .end local v103    # "u":Landroid/os/BatteryStats$Uid;
    .end local v105    # "userId":I
    .end local v110    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v112    # "walarmPower":D
    .end local v116    # "wifiRunningTimeMs":J
    .end local v118    # "wifiRx":J
    .end local v120    # "wifiScanTimeMs":J
    .end local v122    # "wifiTx":J
    :cond_19
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDumper;->addScreenUsage(J)D

    move-result-wide v86

    .local v86, "screenpower":D
    add-double v40, v40, v86

    move-wide/from16 v30, v40

    .local v30, "totalPower":D
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v124

    mul-double v22, v22, v124

    const-wide/high16 v124, 0x4059000000000000L    # 100.0

    div-double v56, v22, v124

    .local v56, "mMinDrainedPower":D
    cmpl-double v6, v56, v40

    if-lez v6, :cond_1a

    move-wide/from16 v30, v56

    :cond_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v0, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move/from16 v29, v0

    .local v29, "currentBatteryLevel":I
    sget v6, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    sub-int v28, v6, v29

    .local v28, "delta":I
    const-string v6, "BatteryStatsDumper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Previous Battery Level: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Current Level: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Delta: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v28, :cond_1b

    const/16 v28, 0x0

    :cond_1b
    sput v29, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    sget-object v22, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v32

    move/from16 v23, p1

    move/from16 v24, p2

    invoke-virtual/range {v22 .. v32}, Lcom/android/internal/os/BatteryStatsDBHelper;->addStatsToDB(ZZJLjava/util/ArrayList;IIDI)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mSupportDailyBatteryStats:Z

    if-eqz v6, :cond_1c

    sget-object v6, Lcom/android/internal/os/BatteryStatsDumper;->extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    if-eqz v6, :cond_1c

    sget-object v22, Lcom/android/internal/os/BatteryStatsDumper;->extDb:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v32

    move/from16 v23, p1

    move/from16 v24, p2

    invoke-virtual/range {v22 .. v32}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->addStatsToDB(ZZJLjava/util/ArrayList;IIDI)V

    :cond_1c
    const-string v6, "BatteryStatsDumper"

    const-string v21, "Writing to database completed"

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public updatePrevBatteryValue()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDumper;->getBatteryLevel()I

    move-result v0

    sput v0, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    return-void
.end method