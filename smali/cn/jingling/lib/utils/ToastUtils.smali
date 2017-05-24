.class public Lcn/jingling/lib/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sAppContext:Landroid/content/Context;

.field private static sToast:Landroid/widget/Toast;

.field private static sToastMiddle:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "cx"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/utils/ToastUtils;->sAppContext:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public static show(I)V
    .locals 2
    .param p0, "resId"    # I

    .prologue
    .line 26
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 32
    :goto_0
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public static show(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 22
    :goto_0
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    return-void

    .line 20
    :cond_0
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showToastShortMiddle(I)V
    .locals 3
    .param p0, "textID"    # I

    .prologue
    const/4 v2, 0x0

    .line 36
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToastMiddle:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    sget-object v1, Lcn/jingling/lib/utils/ToastUtils;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToastMiddle:Landroid/widget/Toast;

    .line 40
    :cond_0
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToastMiddle:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 41
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToastMiddle:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 42
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToastMiddle:Landroid/widget/Toast;

    sget-object v1, Lcn/jingling/lib/utils/ToastUtils;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget-object v0, Lcn/jingling/lib/utils/ToastUtils;->sToastMiddle:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    return-void
.end method
