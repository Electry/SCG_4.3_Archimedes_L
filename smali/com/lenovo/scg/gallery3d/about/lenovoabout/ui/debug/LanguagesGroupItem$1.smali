.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$1;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;
.source "LanguagesGroupItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;

.field final synthetic val$info:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;

.field final synthetic val$listener:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;

    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$1;->val$listener:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;

    iput-object p6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$1;->val$info:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;

    invoke-direct {p0, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$1;->val$listener:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$1;->val$info:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;->onClick(Ljava/util/Locale;)V

    .line 52
    return-void
.end method
