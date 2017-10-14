.class public Landroid/inputmethodservice/CompactExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "CompactExtractEditLayout.java"


# instance fields
.field private mInputExtractAccessories:Landroid/view/View;

.field private mInputExtractAction:Landroid/view/View;

.field private mInputExtractEditText:Landroid/view/View;

.field private mPerformLayoutChanges:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private applyFractionInt(II)I
    .locals 1
    .param p1, "fraction"    # I
    .param p2, "whole"    # I

    .prologue
    invoke-virtual {p0}, Landroid/inputmethodservice/CompactExtractEditLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private applyProportionalLayout(II)V
    .locals 3
    .param p1, "screenWidthPx"    # I
    .param p2, "screenHeightPx"    # I

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/inputmethodservice/CompactExtractEditLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->setGravity(I)V

    :cond_0
    const v0, 0x1130006

    invoke-direct {p0, v0, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v0

    invoke-static {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutHeight(Landroid/view/View;I)V

    const v0, 0x1130007

    invoke-direct {p0, v0, p1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v0

    const v1, 0x1130009

    invoke-direct {p0, v1, p1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/inputmethodservice/CompactExtractEditLayout;->setPadding(IIII)V

    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    const v1, 0x113000a

    invoke-direct {p0, v1, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutMarginBottom(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    const v1, 0x113000b

    invoke-direct {p0, v1, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutMarginBottom(Landroid/view/View;I)V

    return-void
.end method

.method private static setLayoutHeight(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "px"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static setLayoutMarginBottom(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "px"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v4, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mPerformLayoutChanges:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/CompactExtractEditLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v1, "heightPixels":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v3, "widthPixels":I
    invoke-direct {p0, v3, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyProportionalLayout(II)V

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "heightPixels":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "widthPixels":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020025

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    const v0, 0x1020388

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    const v0, 0x1020389

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAction:Landroid/view/View;

    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAction:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mPerformLayoutChanges:Z

    :cond_0
    return-void
.end method