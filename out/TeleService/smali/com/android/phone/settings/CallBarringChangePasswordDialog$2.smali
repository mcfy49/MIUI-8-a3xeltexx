.class Lcom/android/phone/settings/CallBarringChangePasswordDialog$2;
.super Ljava/lang/Object;
.source "CallBarringChangePasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallBarringChangePasswordDialog;->showErrDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$2;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 231
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 232
    return-void
.end method