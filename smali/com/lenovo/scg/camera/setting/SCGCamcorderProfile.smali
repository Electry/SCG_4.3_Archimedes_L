.class public Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;
.super Ljava/lang/Object;
.source "SCGCamcorderProfile.java"


# static fields
.field public static final QUALITY_1080P:Ljava/lang/String;

.field public static final QUALITY_1920x1440:Ljava/lang/String;

.field public static final QUALITY_2K:Ljava/lang/String;

.field public static final QUALITY_4096x2160:Ljava/lang/String;

.field public static final QUALITY_4K:Ljava/lang/String;

.field public static final QUALITY_720P:Ljava/lang/String;

.field public static final QUALITY_720x480:Ljava/lang/String;

.field public static final QUALITY_CIF:Ljava/lang/String;

.field public static final QUALITY_Intent_HIGH:Ljava/lang/String;

.field public static final QUALITY_Intent_LOW:Ljava/lang/String;

.field public static final QUALITY_QVGA:Ljava/lang/String;

.field public static final QUALITY_VGA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_2K:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_QVGA:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_Intent_LOW:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_Intent_HIGH:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_VGA:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_CIF:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720x480:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1920x1440:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4096x2160:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
