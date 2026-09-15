# 빅데이터개론 실습 과제 (2026-2)

Korea University · Introduction to Big Data
교재 *Mining of Massive Datasets* 기반 주차별 실습 과제. 강의 랩 저장소 구조(저장소 루트에 `check.py` + 주차별 `wXX-*` 폴더)를 그대로 따릅니다.

## 주차별 현황

| 주차 | 주제 | 폴더 | 상태 |
|---|---|---|---|
| Week 03 | Finding Similar Items — Minhash & LSH | [`w03-lsh/`](./w03-lsh/) | ✅ 완료 |
| Week 04 | (예정) | `w04-stream/` | ⬜ 예정 |
| Week 05 | (예정) | `w05-pagerank/` | ⬜ 예정 |
| Week 06 | (예정) | `w06-apriori/` | ⬜ 예정 |
| Week 07 | (예정) | `w07-kmeans/` | ⬜ 예정 |

## Week 03 결과 요약

| Task | 내용 | 결과 |
|---|---|---|
| Task 1 | Minhash·LSH 직접 구현 (one-pass) | `--verify` → **all ok** |
| Task 2 | 내 기계 크로스오버 측정 | 6개 크기 측정 + 측정 한계(2,120개 캡) 발견 |
| Task 3 | 적게 비교하고 같은 짝 찾기 | recall 100%, 99.99% 회피 → **strong** |

자세한 관찰은 [`w03-lsh/out/observation.md`](./w03-lsh/out/observation.md), 크로스오버 곡선 분석은 [`w03-lsh/out/curve.md`](./w03-lsh/out/curve.md) 참고.

## 검증 방법

```bash
cd w03-lsh
python test_tasks.py       # 각 Task 자동 채점
python ../check.py w03     # 제출 형식 확인
```
