.class public Lmf/org/apache/wml/dom/WMLImgElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLImgElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLImgElement;


# static fields
.field private static final serialVersionUID:J = -0x6f0af0e5d40bc1eL


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/wml/dom/WMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "alt"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "hspace"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "localsrc"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "src"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "vspace"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "xml:lang"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHspace(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "hspace"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocalSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "localsrc"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVspace(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "vspace"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
