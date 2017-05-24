.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;
.super Ljava/lang/Object;
.source "TalkbackHelper.java"


# instance fields
.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;->mContext:Landroid/content/Context;

    .line 13
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 14
    return-void
.end method


# virtual methods
.method public say(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 17
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const/16 v1, 0x80

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 20
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 23
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method
