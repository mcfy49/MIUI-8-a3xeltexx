.class Lmf/org/apache/xerces/dom/LCount;
.super Ljava/lang/Object;
.source "LCount.java"


# static fields
.field static lCounts:Ljava/util/Hashtable;


# instance fields
.field public bubbles:I

.field public captures:I

.field public defaults:I

.field public total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/LCount;->lCounts:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmf/org/apache/xerces/dom/LCount;->captures:I

    iput v0, p0, Lmf/org/apache/xerces/dom/LCount;->bubbles:I

    iput v0, p0, Lmf/org/apache/xerces/dom/LCount;->total:I

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;
    .locals 2
    .param p0, "evtName"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lmf/org/apache/xerces/dom/LCount;->lCounts:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/LCount;

    .local v0, "lc":Lmf/org/apache/xerces/dom/LCount;
    if-nez v0, :cond_0

    sget-object v1, Lmf/org/apache/xerces/dom/LCount;->lCounts:Ljava/util/Hashtable;

    new-instance v0, Lmf/org/apache/xerces/dom/LCount;

    .end local v0    # "lc":Lmf/org/apache/xerces/dom/LCount;
    invoke-direct {v0}, Lmf/org/apache/xerces/dom/LCount;-><init>()V

    .restart local v0    # "lc":Lmf/org/apache/xerces/dom/LCount;
    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
