.class public Lcom/sec/epdg/IWlanConnectResult;
.super Ljava/lang/Object;
.source "IWlanConnectResult.java"


# instance fields
.field private mCId:I

.field private mIpSecConnection:Lcom/ipsec/client/IPsecConnection;

.field private mIwlanError:Lcom/sec/epdg/IWlanError;


# direct methods
.method public constructor <init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "conn"    # Lcom/ipsec/client/IPsecConnection;
    .param p3, "iwlanError"    # Lcom/sec/epdg/IWlanError;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/sec/epdg/IWlanConnectResult;->mCId:I

    .line 15
    iput-object p2, p0, Lcom/sec/epdg/IWlanConnectResult;->mIpSecConnection:Lcom/ipsec/client/IPsecConnection;

    .line 16
    iput-object p3, p0, Lcom/sec/epdg/IWlanConnectResult;->mIwlanError:Lcom/sec/epdg/IWlanError;

    .line 17
    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mCId:I

    return v0
.end method

.method public getIPSecConnection()Lcom/ipsec/client/IPsecConnection;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mIpSecConnection:Lcom/ipsec/client/IPsecConnection;

    return-object v0
.end method

.method public getIwlanError()Lcom/sec/epdg/IWlanError;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mIwlanError:Lcom/sec/epdg/IWlanError;

    return-object v0
.end method
