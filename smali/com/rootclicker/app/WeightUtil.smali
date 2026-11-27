.class public final Lcom/rootclicker/app/WeightUtil;
.super Ljava/lang/Object;
.source "WeightUtil.java"


# static fields
.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 80

    const-string v0, "1.89"

    const-string v1, "3.78"

    const-string v2, "5.66"

    const-string v3, "7.55"

    const-string v4, "9.44"

    const-string v5, "11.33"

    const-string v6, "13.22"

    const-string v7, "15.10"

    const-string v8, "16.99"

    const-string v9, "18.88"

    const-string v10, "20.77"

    const-string v11, "22.66"

    const-string v12, "24.54"

    const-string v13, "26.43"

    const-string v14, "28.32"

    const-string v15, "30.21"

    const-string v16, "32.10"

    const-string v17, "33.98"

    const-string v18, "35.87"

    const-string v19, "37.76"

    const-string v20, "39.65"

    const-string v21, "41.54"

    const-string v22, "43.42"

    const-string v23, "45.31"

    const-string v24, "47.20"

    const-string v25, "49.09"

    const-string v26, "50.98"

    const-string v27, "52.86"

    const-string v28, "54.75"

    const-string v29, "56.64"

    const-string v30, "58.53"

    const-string v31, "60.42"

    const-string v32, "62.30"

    const-string v33, "64.19"

    const-string v34, "66.08"

    const-string v35, "67.97"

    const-string v36, "69.86"

    const-string v37, "71.74"

    const-string v38, "73.63"

    const-string v39, "75.52"

    const-string v40, "77.41"

    const-string v41, "79.30"

    const-string v42, "81.18"

    const-string v43, "83.07"

    const-string v44, "84.96"

    const-string v45, "86.85"

    const-string v46, "88.74"

    const-string v47, "90.62"

    const-string v48, "92.51"

    const-string v49, "94.40"

    const-string v50, "96.29"

    const-string v51, "98.18"

    const-string v52, "100.06"

    const-string v53, "101.95"

    const-string v54, "103.84"

    const-string v55, "105.73"

    const-string v56, "107.62"

    const-string v57, "109.50"

    const-string v58, "111.39"

    const-string v59, "113.28"

    const-string v60, "115.17"

    const-string v61, "117.06"

    const-string v62, "118.94"

    const-string v63, "120.83"

    const-string v64, "122.72"

    const-string v65, "124.61"

    const-string v66, "126.50"

    const-string v67, "128.38"

    const-string v68, "130.27"

    const-string v69, "132.16"

    const-string v70, "134.05"

    const-string v71, "135.94"

    const-string v72, "137.82"

    const-string v73, "139.71"

    const-string v74, "141.60"

    const-string v75, "143.49"

    const-string v76, "145.38"

    const-string v77, "147.26"

    const-string v78, "149.15"

    const-string v79, "151.04"

    .line 5
    filled-new-array/range {v0 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rootclicker/app/WeightUtil;->VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-gtz p0, :cond_0

    const-string p0, "0.0"

    return-object p0

    .line 14
    :cond_0
    sget-object v0, Lcom/rootclicker/app/WeightUtil;->VALUES:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method
