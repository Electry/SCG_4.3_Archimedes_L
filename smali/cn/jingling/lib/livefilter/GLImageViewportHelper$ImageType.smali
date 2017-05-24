.class public final enum Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;
.super Ljava/lang/Enum;
.source "GLImageViewportHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/livefilter/GLImageViewportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER_CROP:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

.field private static final synthetic ENUM$VALUES:[Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

.field public static final enum FIT_BOTTOM:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

.field public static final enum FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

.field public static final enum FIT_TOP:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    new-instance v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    const-string v1, "CENTER_CROP"

    invoke-direct {v0, v1, v3}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->CENTER_CROP:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    new-instance v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    const-string v1, "FIT_TOP"

    invoke-direct {v0, v1, v4}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_TOP:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    new-instance v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    const-string v1, "FIT_BOTTOM"

    invoke-direct {v0, v1, v5}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_BOTTOM:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 137
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    sget-object v1, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->CENTER_CROP:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_TOP:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_BOTTOM:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    aput-object v1, v0, v5

    sput-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->ENUM$VALUES:[Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    return-object v0
.end method

.method public static values()[Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->ENUM$VALUES:[Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    array-length v1, v0

    new-array v2, v1, [Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
