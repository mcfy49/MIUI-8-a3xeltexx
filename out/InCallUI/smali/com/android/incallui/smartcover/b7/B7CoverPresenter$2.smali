.class Lcom/android/incallui/smartcover/b7/B7CoverPresenter$2;
.super Ljava/lang/Object;
.source "B7CoverPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/b7/B7CoverPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    # getter for: Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->access$000(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    # getter for: Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->access$000(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    # setter for: Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v0, p2}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->access$102(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 218
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$2;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    # invokes: Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->updateSmartCoverInfo()V
    invoke-static {v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->access$200(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;)V

    goto :goto_0
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 224
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 227
    :cond_0
    return-void
.end method