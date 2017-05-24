.class public Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$BitmapAndStatus;
.super Ljava/lang/Object;
.source "GLStaticFBORenderControll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapAndStatus"
.end annotation


# static fields
.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_OOM:I = 0x1


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public status:I

.field final synthetic this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;


# direct methods
.method public constructor <init>(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "status"    # I

    .prologue
    .line 60
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$BitmapAndStatus;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$BitmapAndStatus;->bitmap:Landroid/graphics/Bitmap;

    .line 62
    iput p3, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$BitmapAndStatus;->status:I

    .line 63
    return-void
.end method
