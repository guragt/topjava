package ru.javawebinar.topjava.repository.datajpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;
import ru.javawebinar.topjava.model.Meal;

import java.time.LocalDateTime;
import java.util.List;

public interface CrudMealRepository extends JpaRepository<Meal, Integer> {

    @Transactional
    @Modifying
    @Query("DELETE FROM Meal m WHERE m.id=?1 AND m.user.id=?2")
    int delete(int id, int userId);

    @Query("SELECT m FROM Meal m WHERE m.id=?1 AND m.user.id=?2")
    Meal get(int id, int userId);

    @Query("SELECT m FROM Meal m WHERE m.user.id=?1")
    List<Meal> getAll(int userId);

    @Query("SELECT m FROM Meal m WHERE m.user.id=?3 AND m.dateTime BETWEEN ?1 AND ?2")
    List<Meal> getBetween(LocalDateTime startDate, LocalDateTime endDate, int userId);
}
